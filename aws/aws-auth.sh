#!/bin/bash

# Input username and password

read -r -p "Enter your username: " NAME
read -r -s -p "Enter your password: " PASSWORD

# Create user
aws iam create-user --user-name "$NAME"

# Create console login
aws iam create-login-profile --user-name "$NAME" --password "$PASSWORD" --no-password-reset

# Attach policy to the user
aws iam attach-user-policy --user-name "$NAME" --policy-arn --policy-arn arn:aws:iam::aws:policy/AdministratorAccess


