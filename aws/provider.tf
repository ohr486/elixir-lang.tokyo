provider "aws" {
  version                 = "~> 3.0"
  region                  = "ap-northeast-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "elixir-lang-tokyo-terraform" # SET YOUR PROFILE
}
