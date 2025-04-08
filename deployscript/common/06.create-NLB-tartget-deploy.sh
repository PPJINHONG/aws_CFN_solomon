aws cloudformation create-stack \
  --stack-name OHPARK-ADMIN-NLB-TARGET-DEPLOY \
  --template-body file:///home/chef/deployment/common/templates/06.create-NLB-target-deploy.yaml \
  --parameters file:///home/chef/deployment/common/parameters/06.create-NLB-target-deploy.json \
  --capabilities CAPABILITY_NAMED_IAM
