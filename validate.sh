#!/usr/bin/env bash
cd example/exampleA || return
terraform init
terraform validate
