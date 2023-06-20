#!/bin/sh
set -e

git config --global url."https://oauth2:${ATLANTIS_GH_TOKEN}@github.com".insteadOf https://github.com

atlantis server