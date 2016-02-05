#!/bin/bash

set -e

ES_HOST=${ES_HOST:-elasticsearch}
ES_PORT=${ES_HOST:-9200}

eval "cat <<EOF
$(</etc/td-agent/td-agent.conf.templat)
EOF
" > /etc/td-agent/td-agent.conf

