#!/bin/bash

# Function to determine the shell
get_shell() {
    local shell_type

    # Check if Zsh is the current shell
    if [ -n "$ZSH_VERSION" ]; then
        shell_type="zsh"
    # Check if Bash is the current shell
    elif [ -n "$BASH_VERSION" ]; then
        shell_type="bash"
    # Check if PowerShell is available on Windows
    elif command -v powershell &> /dev/null; then
        shell_type="powershell"
    # Check if Command Prompt is available on Windows
    elif command -v cmd &> /dev/null; then
        shell_type="cmd"
    else
        shell_type="unknown"
    fi

    echo "$shell_type"
}

# Function to add the source command to the shell configuration file
add_source_to_config() {
    local shell_type="$1"

    case "$shell_type" in
        zsh)
            # For Zsh on Unix-like systems
            echo 'source ~/ytp.sh' >> ~/.zshrc
            ;;
        bash)
            # For Bash on Unix-like systems
            echo 'source ~/ytp.sh' >> ~/.bashrc
            ;;
        powershell)
            # For PowerShell on Windows
            Add-Content -Path $PROFILE -Value 'source ~/ytp.sh'
            ;;
        cmd)
            # For Command Prompt on Windows
            echo 'source ~/ytp.sh' >> %USERPROFILE%\Documents\profile.cmd
            ;;
        *)
            echo "Unsupported shell: $shell_type. Add 'source ~/ytp.sh' manually to your shell profile."
            ;;
    esac
}

# Detect the shell
current_shell=$(get_shell)

# Add the source command to the corresponding shell configuration file
add_source_to_config "$current_shell"

# You can add additional logic for other shells or operating systems if needed
