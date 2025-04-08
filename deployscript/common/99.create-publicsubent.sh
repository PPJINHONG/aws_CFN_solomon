aws cloudformation create-stack \
  --stack-name ohpark-B-public-ec2-subnet \
  --template-body file:///home/chef/deployment/templates/public-bastion-template2.yaml \
  --parameters file:///home/chef/deployment/parameters/A-department/pulicsubnet_ec2.json \
  --capabilities CAPABILITY_NAMED_IAM
