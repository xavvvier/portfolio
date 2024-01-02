# Deployment

Execute deployment using podman one-off commands, without credentials:

`podman run --rm -v "./deploy:/infra" -w "/infra" hashicorp/terraform:1.6.6 fmt`

Or with AWS credentials (after setting them up with `aws-vault exec javier`):

`podman run --rm -v "./deploy:/infra" -w "/infra" \
-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
-e AWS_SESSION_TOKEN=${AWS_SESSION_TOKEN} \
hashicorp/terraform:1.6.6 plan`
