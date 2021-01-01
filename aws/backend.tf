terraform {
  backend "s3" {
    bucket                  = "ohr486.terraform"          # SET YOUR BUCKET
    key                     = "elixir-lang-tokyo.tfstate" # SET YOUR KEY
    region                  = "ap-northeast-1"
    dynamodb_table          = "tfstate"                   # SET YOUR DDB TABLE
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "ohr486base-terraform"      # SET YOUR PROFILEt
  }
}
