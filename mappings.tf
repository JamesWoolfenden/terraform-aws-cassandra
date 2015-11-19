#these are ubuntu 14.04 images
variable "aws_amis" {
    default = {
      us-east-1="ami-d05e75b8"
      us-west-1=""
      us-west-2=""
      eu-west-1="ami-47a23a30"
      ap-northeast-1=""
      ap-southeast-2=""
    }
}

