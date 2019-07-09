#!/usr/bin/env bash
cd example/exampleA || return
echo init
terraform init
echo validate
terraform validate
