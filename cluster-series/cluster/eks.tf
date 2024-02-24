# Create eks cluster
resource "aws_eks_cluster" "group4" {
  name     = "group4"
  role_arn = data.terraform_remote_state.network.outputs.demo_role

  vpc_config {
    endpoint_public_access  = true
    endpoint_private_access = true
    subnet_ids = [
      data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.public[1],
      data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.public[1]
    ]
  }

}


