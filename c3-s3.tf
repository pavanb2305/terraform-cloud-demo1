# Resource Block: Create Random Pet Name 
resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}
/*
# Resource Block: Create AWS S3 Bucket
resource "aws_s3_bucket" "sample" {
  
  # for_each Meta-Argument
  for_each = {
    dev  = "my-dapp-bucket"
    qa   = "my-qapp-bucket"
    stag = "my-sapp-bucket"
    prod = "my-papp-bucket"
  }

  bucket = "${each.key}-${each.value}"
  #bucket = random_pet.petname.id
  #acl    = "private" # This argument is deprecated, so commenting it. 
  

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
  acl    = "public-read"
  region = "us-east-1"  # Comment this if we are going to use AWS Provider v3.x version
}
*/