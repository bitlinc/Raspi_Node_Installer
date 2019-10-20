#!/usr/bin/bash

#Functions

#Install brew for macOS
function install_brew_macOS {
    echo ""
    echo "Step 1: Installing brew for macOS"
    echo ""
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

#Install Python 3 for macOS
function install_python_macOS {
    echo ""
    echo "Step 2: Installing Python 3 for macOS"
    echo ""
    brew install python3
    brew install python3-pip 
}

#Install guizero for macOS
function install_guizero_macOS {
    echo ""
    echo "Step 3: Installing guizero for macOS"
    echo ""
    pip3 install guizero
    exit 1
}

#Install Python 3 for Linux
function install_python_linux {
    echo ""
    echo "Step 1: Installing Python 3 for Linux"
    echo ""
    sudo apt install python3 -y
    sudo apt install python3-pip -y 
    sudo apt autoremove -y
    pip3 install wget
}

#Install guizero for Linux
function install_guizero_linux {
    echo ""
    echo "Step 2: Installing guizero for Linux"
    echo ""
    pip3 install guizero
}


#Setup Installation for macOS
function setup_install_macOS {
    install_brew_macOS
    install_python_macOS
    install_guizero_macOS
    exit
}

#Setup Installation for Linux
function setup_install_linux {
    install_python_linux
    install_guizero_linux
    exit
}
   

echo ""
echo "Setting up your computer for Bitlinc Install Script..."
echo ""
echo ""
sleep 5.0
case "$OSTYPE" in
    darwin*)  setup_install_macOS ;;
    linux*)   setup_install_linux ;;
    msys*)    echo "This Bitcoin install script isn't configured for use with Windows yet" ;;
    *)        echo "unknown: $OSTYPE" ;;
esac


        