#Makefile
.PHONY: all

all: init plan build

init:
	rm -rf .terraform/
	terraform init -reconfigure

plan:
	terraform plan -refresh=true

build:
	terraform apply -auto-approve

check:
	terraform plan -detailed-exitcode

destroy:
	terraform destroy -force

docs:
	terraform-docs md . > README.md

valid:
	tflint
	terraform fmt -check=true -diff=true
