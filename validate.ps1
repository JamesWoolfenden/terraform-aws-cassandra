#!/usr/bin/env pwsh
Push-Location
Set-Location example/exampleA
Remove-Item .terraform -force -Recurse -ErrorAction SilentlyContinue
terraform init
terraform validate
Pop-Location
