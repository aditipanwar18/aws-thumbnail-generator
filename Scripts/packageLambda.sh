#!/bin/bash

echo "Packaging Lambda..."

cd lambda

# Clean old builds
rm -rf PIL pillow-*.dist-info __pycache__

# Install Linux-compatible Pillow
pip install Pillow \
--platform manylinux2014_x86_64 \
--target . \
--implementation cp \
--python-version 3.10 \
--only-binary=:all: \
--upgrade

cd ..

# Zip using PowerShell (fixed)
powershell -Command "Compress-Archive -Path 'lambda\*' -DestinationPath 'lambda.zip' -Force"

echo "Done ✅ Lambda package ready"
