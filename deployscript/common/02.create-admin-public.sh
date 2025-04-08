aws cloudformation update-stack \
  --stack-name OHPARK-ADMIN-PUBLIC-SUBNET \
  --template-body file:///home/chef/deployment/common/templates/02.create-admin-public.yaml \
  --parameters file:///home/chef/deployment/common/parameters/02.create-admin-public.json \
  --capabilities CAPABILITY_NAMED_IAM
