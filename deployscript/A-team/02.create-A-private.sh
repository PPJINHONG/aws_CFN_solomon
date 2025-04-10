aws cloudformation create-stack \
  --stack-name OHPARK-A-PRIVATE-SUBNET \
  --template-body file:///home/chef/deployment/common/templates/03.create-private.yaml \
  --parameters file:///home/chef/deployment/common/parameters/02.create-A-private.json \
  --capabilities CAPABILITY_NAMED_IAM
