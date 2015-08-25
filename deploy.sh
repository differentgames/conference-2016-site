#! /bin/bash
set -e
source .ftp_config
echo "=== Building the site ==="
jekyll build
echo "=== Deploying the site ==="
rsync -azP _site/ "$FTP_USER@$FTP_HOST:$SITE_ROOT"
