#!/usr/bin/env bash
# Dev-environment setup for Claude Code cloud sessions on this repo.
# Idempotent — safe to re-run. Run as root (the session default).
#
# Sessions are ephemeral: everything installed here vanishes when the
# container is reclaimed. To get this automatically in every session, set
# this script as the environment's setup script in the Claude Code
# environment settings (claude.ai/code -> environment -> setup), or run:
#   bash environment/setup.sh
#
# Known proxy blocks in this environment (routes below already work around
# them): checkpoint-api.hashicorp.com, get.helm.sh, baltocdn.com,
# deno.land, packages.microsoft.com, ppa.launchpadcontent.net, and the
# blob CDNs of Docker Hub and public ECR (image pulls DO NOT work even
# though the Docker daemon runs).

set -uo pipefail
log() { printf '\n== %s ==\n' "$*"; }

log "apt packages"
apt-get update -qq || true
DEBIAN_FRONTEND=noninteractive apt-get install -y -qq \
  sqlite3 mysql-client unzip jq dotnet-sdk-8.0 || true

log "AWS CLI v2"
if ! command -v aws >/dev/null; then
  t=$(mktemp -d)
  curl -sSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "$t/aws.zip" \
    && unzip -q "$t/aws.zip" -d "$t" && "$t/aws/install" >/dev/null
  rm -rf "$t"
fi

log "Terraform (latest stable from releases.hashicorp.com)"
if ! command -v terraform >/dev/null; then
  TFV=$(curl -sS https://releases.hashicorp.com/terraform/index.json \
        | jq -r '.versions | keys[]' | grep -Ev 'alpha|beta|rc' | sort -V | tail -1)
  curl -sSL "https://releases.hashicorp.com/terraform/${TFV}/terraform_${TFV}_linux_amd64.zip" -o /tmp/tf.zip
  unzip -qo /tmp/tf.zip terraform -d /usr/local/bin && rm -f /tmp/tf.zip
fi

log "kubectl (stable)"
if ! command -v kubectl >/dev/null; then
  KV=$(curl -LsS https://dl.k8s.io/release/stable.txt)
  curl -sSL "https://dl.k8s.io/release/${KV}/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
  chmod +x /usr/local/bin/kubectl
fi

log "Helm (built from source — get.helm.sh and baltocdn are proxy-blocked)"
command -v helm >/dev/null || GOBIN=/usr/local/bin go install helm.sh/helm/v3/cmd/helm@latest

log "Deno (npm distribution — deno.land is proxy-blocked)"
command -v deno >/dev/null || npm install -g deno >/dev/null

log "Azure CLI (pip venv — packages.microsoft.com is proxy-blocked)"
if ! command -v az >/dev/null; then
  python3 -m venv /opt/azcli
  /opt/azcli/bin/pip install -q --upgrade pip
  /opt/azcli/bin/pip install -q azure-cli
  ln -sf /opt/azcli/bin/az /usr/local/bin/az
fi

log "Docker daemon (no bridge networking in this sandbox; use --network=host)"
if ! timeout 5 docker info >/dev/null 2>&1; then
  nohup dockerd --iptables=false --bridge=none >/var/log/dockerd.log 2>&1 &
  sleep 6
fi

log "AWS config skeleton (~/.aws) — fill credentials or set env vars"
mkdir -p ~/.aws
[ -f ~/.aws/config ] || printf '[default]\nregion = ap-south-1\noutput = json\n' > ~/.aws/config
if [ ! -f ~/.aws/credentials ]; then
  printf '# [default]\n# aws_access_key_id = YOUR_KEY_ID\n# aws_secret_access_key = YOUR_SECRET\n' > ~/.aws/credentials
  chmod 600 ~/.aws/credentials
fi

log "git identity"
git config --global user.email "admin@avylifesciences.com"
git config --global user.name  "anildca1-ui"
git config --global init.defaultBranch main

log "verification"
for c in aws az terraform kubectl helm deno dotnet sqlite3 mysql node npm python3 go rustc java docker; do
  if command -v "$c" >/dev/null 2>&1; then printf '  %-10s OK\n' "$c"; else printf '  %-10s MISSING\n' "$c"; fi
done
timeout 5 docker info >/dev/null 2>&1 && echo "  dockerd     RUNNING" || echo "  dockerd     NOT RUNNING"
echo
echo "Remaining manual configuration:"
echo "  aws: real credentials (env vars in environment settings, or ~/.aws/credentials)"
echo "  az:  az login --use-device-code"
