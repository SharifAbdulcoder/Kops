In order to spin up Kubernetes cluster, you will need some commands that should be set up.

terraform: (wget https://releases.hashicorp.com/terraform/0.11.9/terraform_0.11.9_linux_amd64.zip)

kubectl: (curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl)

kops: (wget https://github.com/kubernetes/kops/releases/download/1.10.0/kops-linux-amd64)

You will need s3 bucket in the same region that you are spinning up k8 cluster export command: (export KOPS_STATE_STORE=s3://khuslenkubernetes.com) (environment variable)

Kops commands to create k8 cluster: (kops create cluster --name=khuslenkubernetes.com --node-size="t2.micro" --master-size="t2.micro" --master-zones="us-west-2a,us-west-2b,us-west-2c" --networking="weave" --topology="private" --bastion=true --dns="private" --zones="us-west-2a,us-west-2b,us-west-2c" --state="s3://khuslenkubernetes.com" --out=. --target="terraform" --yes)

FINALLY YOU WILL HAVE THE TERRAFORM FILE TO RUN.

TERRAFORM INIT, TERRAFORM PLAN, TERRAFORM APPLY :).
