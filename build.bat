set ENV=%1%
Terraform apply -state=.\state\Terraform-%ENV%.tfstate -var environment=%ENV% 
