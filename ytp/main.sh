#!/bin/bash

# Function to install yt-dlp based on the operating system
install_ytdlp() {
    # Check if yt-dlp is already installed
    if command -v yt-dlp &> /dev/null; then
        echo "yt-dlp is already installed."
    else
        # Get the operating system name
        OS=$(uname -s)

        # Start a case statement based on the operating system
        case "$OS" in
            Linux*)
                # If the operating system is Linux, enter this block
                echo "Installing yt-dlp on Linux..."

                # Check if Homebrew is available
                if command -v brew &> /dev/null; then
                    # If Homebrew is available, install yt-dlp using Homebrew
                    brew install yt-dlp
                # Check if pacman is available
                elif command -v pacman &> /dev/null; then
                    # If pacman is available, install yt-dlp using pacman
                    sudo pacman -Syu yt-dlp
                # Check if apt is available
                elif command -v apt &> /dev/null; then
                    # If apt is available, add the PPA and install yt-dlp using apt
                    sudo add-apt-repository ppa:tomtomtom/yt-dlp
                    sudo apt update
                    sudo apt install yt-dlp
                # Check if apk is available
                elif command -v apk &> /dev/null; then
                    # If apk is available, install yt-dlp using apk
                    doas apk -U add yt-dlp
                # If no package manager is detected, print a message
                else
                    echo "Unsupported package manager on Linux. Install yt-dlp manually."
                fi
                ;;
            Darwin*)
                # If the operating system is macOS, enter this block
                echo "Installing yt-dlp on macOS..."

                # Check if Homebrew is available
                if command -v brew &> /dev/null; then
                    # If Homebrew is available, install yt-dlp using Homebrew
                    brew install yt-dlp
                # Check if MacPorts is available
                elif command -v port &> /dev/null; then
                    # If MacPorts is available, install yt-dlp using MacPorts
                    sudo port install yt-dlp
                # If no package manager is detected, print a message
                else
                    echo "Unsupported package manager on macOS. Install yt-dlp manually."
                fi
                ;;
            CYGWIN*|MINGW*)
                # If the operating system is Windows, enter this block
                echo "Installing yt-dlp on Windows..."

                # Check if Scoop is available
                if command -v scoop &> /dev/null; then
                    # If Scoop is available, install yt-dlp using Scoop
                    scoop install yt-dlp
                # Check if Chocolatey is available
                elif command -v choco &> /dev/null; then
                    # If Chocolatey is available, install yt-dlp using Chocolatey
                    choco install yt-dlp
                # Check if winget is available
                elif command -v winget &> /dev/null; then
                    # If winget is available, install yt-dlp using winget
                    winget install yt-dlp
                # If no package manager is detected, print a message
                else
                    echo "Unsupported package manager on Windows. Install yt-dlp manually."
                fi
                ;;
            *)
                # If the operating system is not recognized, print a message
                echo "Unsupported operating system: $OS"
                ;;
        esac
    fi
}

# Call the function to install yt-dlp based on the operating system
install_ytdlp

