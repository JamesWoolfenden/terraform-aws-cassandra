set ENV=%1%
Terraform destroy -force -state=.\state\Terraform-%ENV%.tfstate -var environment=%ENV% 
