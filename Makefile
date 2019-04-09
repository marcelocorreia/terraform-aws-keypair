AWS_PROFILE := one

init: _creds fmt
	cd example && terraform init

plan: _creds init
	cd example && terraform plan

apply: _creds fmt
	cd example && terraform apply --auto-approve

destroy: _creds init
	cd example && terraform destroy --auto-approve

state:
	cd example && terraform state list

fmt:
	terraform fmt

_creds:
	$(eval export AWS_PROFILE=$(AWS_PROFILE))




