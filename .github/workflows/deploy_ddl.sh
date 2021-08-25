#! /usr/bin/env bash

set -exo pipefail

pip install git+https://github.com/codeBehindMe/tabledancer.git@4f883d1e04b67eb1bb57b1192fd4b92e510c72a0 --user --install-option="--style=databricks8.1"

echo {\"host\":\""$DATABRICKS_ADDRESS"\", \"token\":\"$DATABRICKS_API_TOKEN\", \"cluster_id\":\"$DATABRICKS_CLUSTER_ID\",\"org_id\":\"0\",\"port\":\"15001\"} > $HOME/.databricks-connect

tabledancer dance ./ddl/my_table.yaml