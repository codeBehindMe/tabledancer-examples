#! /usr/bin/env bash

set -exo pipefail

pip install git+https://github.com/codeBehindMe/tabledancer.git@7b1e1236a953d6e42f43c09d5cc1facde6f41f25 --user --install-option="--style=databricks8.1"

echo {\"host\":\""$DATABRICKS_ADDRESS"\", \"token\":\"$DATABRICKS_API_TOKEN\", \"cluster_id\":\"$DATABRICKS_CLUSTER_ID\",\"org_id\":\"0\",\"port\":\"15001\"} > $HOME/.databricks-connect

tabledancer dance ./ddl/my_table.yaml