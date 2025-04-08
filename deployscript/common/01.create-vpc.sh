aws cloudformation create-stack \
  --stack-name OHPARK-VPC-STACK \
  --template-body file:///home/chef/deployment/common/templates/01.create-vpc-template.yaml \
  --parameters file:///home/chef/deployment/common/parameters/01.create-vpc-param.json \
  --capabilities CAPABILITY_NAMED_IAM
