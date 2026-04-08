#!/usr/bin/env bash
set -euo pipefail

PROJECT="oil-shock-site"
REGION="us-east1"
REPO="oil-shock"
IMAGE="${REGION}-docker.pkg.dev/${PROJECT}/${REPO}/site:latest"

echo "══════════════════════════════════════════════════"
echo "  Deploying Oil Shock → Cloud Run"
echo "══════════════════════════════════════════════════"

# 1. Build & push image via Cloud Build
echo ""
echo "▸ Building container image..."
gcloud builds submit \
  --tag "$IMAGE" \
  --project "$PROJECT" \
  --quiet

# 2. Terraform apply
echo ""
echo "▸ Applying Terraform..."
cd terraform
terraform init -input=false
terraform apply -auto-approve -input=false
cd ..

echo ""
echo "══════════════════════════════════════════════════"
echo "  ✓ Deployed!"
echo "══════════════════════════════════════════════════"
terraform -chdir=terraform output
