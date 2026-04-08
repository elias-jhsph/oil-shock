# The Lull Before — Anatomy of the 2026 Oil Shock

A data-driven, single-page visual analysis of the 2026 Middle East energy crisis and its impact on global oil markets.

**Live at [oilshock.org](https://oilshock.org)**

## About

This piece examines the physical damage to 11+ energy infrastructure facilities across 6 countries, models the resulting global oil stock depletion — the largest drawdown in market history — and projects price impacts and recovery timelines across multiple scenarios.

Built as a self-contained HTML document with inline SVG data visualizations, scroll-reveal animations, and responsive typography.

## Stack

- Pure HTML / CSS / JavaScript — no frameworks, no build step
- [Fraunces](https://fonts.google.com/specimen/Fraunces) + [IBM Plex Sans](https://fonts.google.com/specimen/IBM+Plex+Sans) + [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono)
- Hosted on Google Cloud Run (scales to zero, ~$0/month)
- Infrastructure managed with Terraform

## Deploy

```bash
# Requires: gcloud CLI, Terraform, authenticated GCP account
./deploy.sh
```

Or manually:

```bash
# Build & push container
gcloud builds submit \
  --tag us-east1-docker.pkg.dev/oil-shock-site/oil-shock/site:latest \
  --project oil-shock-site

# Apply infrastructure
cd terraform && terraform init && terraform apply
```

## Project Structure

```
├── oil-shock.html      # The entire site — single file
├── Dockerfile           # nginx:alpine serving the HTML
├── nginx.conf           # Gzip, caching, security headers
├── deploy.sh            # One-command build + deploy
└── terraform/
    ├── main.tf          # Cloud Run, Artifact Registry, domain mapping
    ├── variables.tf     # Project ID, region, domain
    └── outputs.tf       # Service URL, DNS records
```

## License

All rights reserved.
