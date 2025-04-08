aws cloudformation create-stack \
  --stack-name OHPARK-ADMIN-DEPLOY-SERVER \
  --template-body file:///home/chef/deployment/common/templates/04.create-admin-EC2.yaml \
  --parameters file:///home/chef/deployment/common/parameters/04.create-admin-EC2.json \
  --capabilities CAPABILITY_NAMED_IAM
