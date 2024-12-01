#!/usr/bin env bash

echo "Restoring nodes and dependencies"

python cm-cli.py restore-snapshot /snapshot.yaml

python main.py --listen 0.0.0.0