#!/usr/bin/env bash
cd example/examplea || return
echo init
terraform init
echo validate
terraform validate
