terraform {
    backend "s3" {
       bucket          = "adam-bucket-for-tfstate" # this is the buckets name we are creating.
        key             = "PROD/terraform.tfstate" # this is creating a folder to hold the file terraform.tfstate.
       region          = "eu-west-2" # this is the region that we are going to create the bucket in.
       encrypt         = true
       use_lockfile    = true # this will put a lock on the file so only 1 person can work on the document at any time.
  }
} 