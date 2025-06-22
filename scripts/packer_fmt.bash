#!/usr/bin/env bash

set -euxo pipefail
source .env


packer init .
for file in $(find pkrvars -type f -name "*.hcl"); do
    # walidacja pod kątem formatowania
    packer fmt -var-file=$file .
done
