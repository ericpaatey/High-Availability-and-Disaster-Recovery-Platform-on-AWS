module "eks" {

  source = "terraform-aws-modules/eks/aws"

  cluster_name = "${var.environment}-ha-dr-cluster"

  cluster_version = "1.29"

  subnet_ids = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  eks_managed_node_groups = {

    blue = {
      desired_size = 2
      min_size     = 2
      max_size     = 5

      instance_types = ["t3.medium"]

      subnet_ids = [
        module.vpc.private_subnets[0]
      ]
    }

    green = {
      desired_size = 2
      min_size     = 2
      max_size     = 5

      instance_types = ["t3.medium"]

      subnet_ids = [
        module.vpc.private_subnets[1]
      ]
    }
  }
}