# Makefile to run terraform worflow

check:
	@echo "Running terraform checks"
	@terraform init
	@terraform validate
	@terraform fmt
	
plan: check
	@echo "Running terraform plan"
	@terraform plan -out=tfplan 
	@checkov -d
apply: check
	@echo "Running terraform apply"
	@terraform apply -auto-approve
destroy: check
	@echo "Running terraform destroy"
	@terraform destroy -auto-approve
	