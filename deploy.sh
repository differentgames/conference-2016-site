#!/usr/bin/env bash

set -e

if [ -f ".ftp_config" ]; then
  source .ftp_config
fi

echo "=== Building the site ==="
bundle exec jekyll build
echo "=== Deploying the site ==="
rsync -azP _site/ "${FTP_USER:?'Missing FTP_USER config'}@${FTP_HOST:?'Missing FTP_HOST config'}:${SITE_ROOT?:'Missing SITE_ROOT config'}"
