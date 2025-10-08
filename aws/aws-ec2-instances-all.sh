#!/bin/bash

# INSTANCE_LIST=($(aws ec2  describe-instances \
#     --filters "Name=instance-state-name,Values=running" \
#     --query "Reservations[*].Instances[*].InstanceId" \
#     --output text))

INSTANCE_LIST=($(aws ec2 describe-instances \
    --filters "Name=instance-state-name,Values=running" \
    --query "Reservations[*].Instances[*].InstanceId" \
    --output text))
    
if [ ${#INSTANCE_LIST[@]} -eq 0 ]; then
    echo "No running instances found."
    exit 0
fi

echo "Stopping ${#INSTANCES_LIST[@]} running instances..."

for instance in "${INSTANCE_LIST[@]}"; do
    echo "Stopping instance: $instance"
    aws ec2 stop-instances --instance-ids "$instance" > /dev/null
done

echo "All running instances has been stopped."