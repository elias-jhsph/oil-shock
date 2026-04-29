#!/usr/bin/env bash
set -euo pipefail

PROJECT="oil-shock-site"
REGION="us-east1"
REPO="oil-shock"

# Tag the image by git SHA (with -dirty suffix if uncommitted changes) so
# each deploy produces a unique tag and Terraform rolls a new Cloud Run revision.
SHA="$(git rev-parse --short HEAD)"
if ! git diff --quiet HEAD || ! git diff --cached --quiet; then
  SHA="${SHA}-dirty-$(date +%s)"
fi
IMAGE="${REGION}-docker.pkg.dev/${PROJECT}/${REPO}/site:${SHA}"

echo "══════════════════════════════════════════════════"
echo "  Deploying Oil Shock → Cloud Run"
echo "  Tag: ${SHA}"
echo "══════════════════════════════════════════════════"

# 1. Build & push image via Cloud Build
echo ""
echo "▸ Building container image..."
gcloud builds submit \
  --tag "$IMAGE" \
  --project "$PROJECT" \
  --quiet

# 2. Terraform apply (image_tag drives a new Cloud Run revision)
echo ""
echo "▸ Applying Terraform..."
cd terraform
terraform init -input=false
terraform apply -auto-approve -input=false -var="image_tag=${SHA}"
cd ..

echo ""
echo "══════════════════════════════════════════════════"
echo "  ✓ Deployed!"
echo "══════════════════════════════════════════════════"
terraform -chdir=terraform output
