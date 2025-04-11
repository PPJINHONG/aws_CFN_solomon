aws cloudformation create-stack \
  --stack-name OHPARK-A-BASTION \
  --template-body file:///home/chef/deployment/common/templates/05.create-ec2.yaml \
  --parameters file:///home/chef/deployment/department/A-team/parameters/C.create-A-ec2-BASTION.json \
  --capabilities CAPABILITY_NAMED_IAM
