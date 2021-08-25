#! /usr/bin/env bash

set -exo pipefail

pip install git+https://github.com/codeBehindMe/tabledancer.git --user --install-option="--style=databricks8.1"

tabledancer dance ./ddl/my_table.yaml