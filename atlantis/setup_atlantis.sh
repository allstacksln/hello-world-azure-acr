#!/bin/sh
set -e

# Atlantis
 curl -LOs "https://github.com/runatlantis/atlantis/releases/download/v0.18.2/atlantis_linux_amd64.zip"
unzip atlantis_linux_amd64.zip
ln -s /app/atlantis /usr/local/bin/atlantis