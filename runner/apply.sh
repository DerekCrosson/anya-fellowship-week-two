TF_VAR_PAT="${GITHUB_PERSONAL_ACCESS_TOKEN}" TF_VAR_ORG="${GITHUB_ORGANIZATION}" TF_VAR_REPO="${GITHUB_REPO}" TF_VAR_AWS_DEFAULT_REGION="${AWS_DEFAULT_REGION}" TF_VAR_AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" TF_VAR_AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" terraform apply -auto-approve