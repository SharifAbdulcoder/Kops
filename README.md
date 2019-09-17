Creating Kubernetes Cluster with KOPS

Kops is an official Kubernetes project for managing
production-grade Kubernetes clusters. Kops is currently
the best tool to deploy Kubernetes clusters to Amazon
Web Services. The project describes itself as kubectl for
clusters.

If you’re familiar with kubectl, then you’ll feel at home with Kops. It has commands for creating
clusters, updating their settings, and applying changes. Kops uses declarative configuration,
so it’s smart enough to know how to apply infrastructure changes to existing clusters. It also
has support for cluster operational tasks like scaling up nodes or horizontally scaling the
cluster. Kops automates a large part of operating Kubernetes on AWS.

Features of KOPS

Deploy clusters to existing virtual private clouds (VPC) or create a new VPC from scratch
Provisions single or multiple master clusters
Configurable bastion machines for SSH access to individual cluster nodes
Built on a state-sync model for dry-runs and automatic idempotency
Direct infrastructure manipulation, or works with CloudFormation and Terraform
Rolling cluster updates
Supports heterogeneous clusters by creating multiple instance groups


############# First lets create s3 bucket ################

""
  aws s3 mb s3://my_example_cluster.com --region $REGION

  export KOPS_STATE_STORE="s3://my_example_cluster.com"

  ""

############# Create Hosted Zone ################

  You’ll also need to configure DNS. Kops supports a variety of configurations. Each has its own setup instructions. AWS Route53 with an existing HostedZone is the easiest. We’ll assume that there is an existing AWS Route53 HostedZone for my_example_cluster.com in these examples.

Lets form our kops command like below:

You can obtain an example by running:

``` kops create cluster --help ```

  export KOPS_STATE_STORE="s3://khuslenabdul.com"
  kops create cluster khuslenabdul.com \
  --node-count 3 \
  --zones us-east-1a, us-east-1b, us-east-1c \
  --node-size t2.micro \
  --master-size t2.micro \
  --master-zones  us-east-1a \
  --networking weave \
  --topology private \
  --bastion="true" \
  --out= . \
  --target="terraform"
  --yes
