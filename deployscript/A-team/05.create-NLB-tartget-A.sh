aws cloudformation create-stack \
  --stack-name OHPARK-NLB-TARGET-A \
  --template-body file:///home/chef/deployment/common/templates/04.create-BASTION-target.yaml \
  --parameters file:///home/chef/deployment/department/A-team/parameters/C.create-BASTION-target-A.json \
  --capabilities CAPABILITY_NAMED_IAM
