#### This repository is used to update DDNS in Cloudflare gateway with GitHub Actions. The following secrets are needed to run the actions:
- `CLOUDFLARE_API_KEY`: Your Cloudflare API key
- `CLOUDFLARE_ACCOUNT_ID`: Your Cloudflare account ID
- `CLOUDFLARE_ACCOUNT_EMAIL`: Your Cloudflare account email
- `CLOUDFLARE_LOCATION_ID`: Your Cloudflare location ID
- `CLOUDFLARE_LOCATION_NAME`: Your Cloudflare location name
- `DDNS_HOSTNAME`: Your DDNS name

#### By default, I set the action to run as a crontab every hour, but you can change it by yourself.
