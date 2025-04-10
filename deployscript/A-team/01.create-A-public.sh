aws cloudformation create-stack \
  --stack-name OHPARK-A-PUBLIC-SUBNET \
  --template-body file:///home/chef/deployment/common/templates/02.create-public.yaml \
  --parameters file:///home/chef/deployment/common/parameters/02.create-A-public.json \
  --capabilities CAPABILITY_NAMED_IAM
