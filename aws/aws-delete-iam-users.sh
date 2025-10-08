#!/bin/bash

# storing all username in the variable. 
USERS_LIST=($(aws iam list-users --query 'Users[*].UserName' --output text))

for user in "${USERS_LIST[@]}"; do
    if ! [[ "$user" = "admin-user" || "$user" = "ravi-sha" ]]; then
        aws iam detach-user-policy --user-name "$user" --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
        aws iam delete-login-profile --user-name "$user" || true
        aws iam delete-user --user-name "$user"
        echo "$user is deleted from IAM."
    else
        echo "$user is potential user, can't be deleted."
    fi
done
