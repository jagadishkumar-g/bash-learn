#!/bin/bash



LOG_FILE="$HOME/systemsetup.log"
> "$LOG_FILE"

install_package() {
    CMD=$1
    echo "Executing install package function."
    if ! eval "$CMD"; then
        echo "[WARN] Command failed: $CMD" | tee -a "$LOG_FILE"
        return 1
    fi
}

validate_pakage() {
    local TOOL=$1

    if Command -v "$TOOL" &>/dev/null; then
        echo "$TOOL is installed" | tee -a "$LOG_FILE"
    else
        echo "$TOOL not found. Installing...." | tee -a "$LOG_FILE"
        install_package "sudo apt-get install -y $TOOL"
    fi
}

read -r -p "Enter your username: " NAME

read -r -p "Enter tool names separated by space (e.g., curl git tree): " TOOLS

for item in $TOOLS; do
    ((packages++))
    validate_pakage "$item"
done

echo "Hey $NAME, setup complete!"
echo "Tools processed: $packages"
echo "Logs saved to: $LOG_FILE"