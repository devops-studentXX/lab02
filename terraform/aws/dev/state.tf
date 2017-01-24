data "terraform_remote_state" "foo" {
    backend = "s3"
    config {
        bucket = "development-terraform-state-devopsworkshop"
        key = "terraform.tfstate"
        region = "eu-west-1"
        profile = "productlancers"
    }
}
