#!/bin/bash
set -e

echo "===== 1. ruff format --check ====="
ruff format --check .

echo "===== 2. ruff check ====="
ruff check .

echo "===== 3. pytest ====="
pytest

echo "✅ All quality checks passed!"
exit 0

