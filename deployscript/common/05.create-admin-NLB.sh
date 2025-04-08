aws cloudformation create-stack \
  --stack-name OHPARK-ADMIN-NLB \
  --template-body file:///home/chef/deployment/common/templates/05.create-admin-NLB.yaml \
  --parameters file:///home/chef/deployment/common/parameters/05.create-admin-NLB.json \
  --capabilities CAPABILITY_NAMED_IAM
