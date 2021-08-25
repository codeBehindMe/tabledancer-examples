#! /usr/bin/env bash

set -exo pipefail

pip install git+git://github.com/codeBehindMe/tabledancer.git@62f2714a77834a6964412a689b1deedbb3f627c6 --user --install-option="--style=databricks8.1"

echo {\"host\":\""$DATABRICKS_ADDRESS"\", \"token\":\"$DATABRICKS_API_TOKEN\", \"cluster_id\":\"$DATABRICKS_CLUSTER_ID\",\"org_id\":\"0\",\"port\":\"15001\"} > $HOME/.databricks-connect

tabledancer dance ./ddl/my_table.yaml