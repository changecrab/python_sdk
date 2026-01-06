#!/bin/bash
# Script to publish changecrab to PyPI
# Usage: ./publish.sh

set -e

echo "Building package..."
python3 -m build

echo "Checking package..."
python3 -m twine check dist/*

echo ""
echo "Ready to publish to PyPI!"
echo ""
echo "To publish, run one of these commands:"
echo ""
echo "1. With API token (recommended):"
echo "   python3 -m twine upload dist/* --username __token__ --password pypi-<your-token>"
echo ""
echo "2. With environment variables:"
echo "   export TWINE_USERNAME=__token__"
echo "   export TWINE_PASSWORD=pypi-<your-token>"
echo "   python3 -m twine upload dist/*"
echo ""
echo "Get your API token from: https://pypi.org/manage/account/token/"


