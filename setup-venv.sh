#!/usr/bin/env bash

set -e

# Create venv
python3 -m venv venv

# Activate venv
source venv/bin/activate

cd Zonos

# Install project dependencies
pip install -e .

# Install torch with xpu support enabled
pip install --force-reinstall torch torchaudio --index-url https://download.pytorch.org/whl/xpu
