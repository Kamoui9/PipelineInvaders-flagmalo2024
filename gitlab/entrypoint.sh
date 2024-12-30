#!/bin/bash

ROOT_TOKEN="60b6c7ba41475b2ebdded2c0d3b079f0"

if test -f "/setup/ready"; then
    echo "GitLab is running"
    /assets/wrapper > /dev/null 2>&1
fi
echo "GitLab is starting..."
set -m
/assets/wrapper > /dev/null 2>&1 &
while true
do
  gitlab_status_code=$(curl --write-out %{http_code} --silent --output /dev/null localhost/users/sign_in )
  if [ "$gitlab_status_code" -eq 200 ]; then
    break
  fi
  sleep 5
done

echo "Starting setup"

gitlab-rails runner "token = User.find_by_username('root').personal_access_tokens.create(scopes: [:api], name: 'Automation token', expires_at: 365.days.from_now); token.set_token('$ROOT_TOKEN'); token.save!"

cd /terraform-gitlab
terraform init
terraform apply -auto-approve

cd /

dos2unix repositories.sh
bash /repositories.sh

echo "GitLab is ready!"
fg 