#!/usr/bin/env bash
[ "$EUID" -eq 0 ] && { echo "Please don't run as a root"; exit 1; }
ln -s $(pwd)/yssh /usr/local/bin/yssh