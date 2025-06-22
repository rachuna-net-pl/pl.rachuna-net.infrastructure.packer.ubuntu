#!/usr/bin/env bash

set -euxo pipefail
source .env

packer init .
for file in $(find pkrvars -type f -name "*.hcl"); do
    # Create a new vm template
    packer build -var-file=$file .
done
