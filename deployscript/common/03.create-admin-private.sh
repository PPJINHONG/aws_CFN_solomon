aws cloudformation create-stack \
  --stack-name OHPARK-ADMIN-PRIVATE-SUBNET \
  --template-body file:///home/chef/deployment/common/templates/03.create-admin-private.yaml \
  --parameters file:///home/chef/deployment/common/parameters/03.create-admin-private.json \
  --capabilities CAPABILITY_NAMED_IAM
