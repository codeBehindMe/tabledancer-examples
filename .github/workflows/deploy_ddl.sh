#! /usr/bin/env bash

set -exo pipefail

pip install git+https://github.com/codeBehindMe/tabledancer.git@4eab9a27f86efbd62fe44d9da048fdfd68f34d96 --user --install-option="--style=databricks8.1"

echo {\"host\":\""$DATABRICKS_ADDRESS"\", \"token\":\"$DATABRICKS_API_TOKEN\", \"cluster_id\":\"$DATABRICKS_CLUSTER_ID\",\"org_id\":\"0\",\"port\":\"15001\"} > $HOME/.databricks-connect

tabledancer dance ./ddl/my_table.yaml