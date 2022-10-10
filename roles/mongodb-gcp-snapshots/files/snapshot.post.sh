#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

SCRIPT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# shellcheck disable=SC1091
source "${SCRIPT_PATH}/mongo-cmd.sh"

# shellcheck disable=SC2154
$mongo_cmd --eval "printjson(db.adminCommand( { fsyncUnlock: 1 } ))"
