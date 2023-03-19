module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "afz-altschool-cluster"
    cluster_version = "1.24"

    cluster_endpoint_public_access  = true

    vpc_id = module.afz-altschool-cluster.vpc_id
    subnet_ids = module.afz-altschool-cluster.private_subnets

    tags = {
        environment = "Prod"
        application = "Afz-app"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 4
            max_size = 5
            desired_size = 3

            instance_types = ["t3.medium"]
        }
    }
}