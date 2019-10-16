#!/usr/bin/env bash

# Hides the output of shell command 
        function suppress () { 
            /bin/rm --force /tmp/suppress.out 2> /dev/null; ${1+"$@"} > /tmp/suppress.out 2>&1 || cat /tmp/suppress.out; /bin/rm /tmp/suppress.out
        }

    # Script to run 'su root -c' command in bash function script
        function su_Root {
            local firstArg=$1
            if [ $(type -t $firstArg) = function ]
            then
                    shift && command sudo bash -c "$(declare -f $firstArg);$firstArg $*"
            else
                    command su root -c "$@"
            fi
        } 

    # Script to run 'sudo' command in bash function script
        function sudo_Root {
            local firstArg=$1
            if [ $(type -t $firstArg) = function ]
            then
                    shift && command sudo bash -c "$(declare -f $firstArg);$firstArg $*"
            else
                    command sudo "$@"
            fi
        }

USERNAME=$(whoami)
    function remove_Create_Directory_Linux () {
        rm -rf /home/"$USERNAME"/Bitcoin_Installer
        mkdir /home/"$USERNAME"/Bitcoin_Installer
        cd /home/"$USERNAME"/Bitcoin_Installer
        wget https://raw.githubusercontent.com/bitlinc/Raspi_Node_Installer/master/app
        wget https://raw.githubusercontent.com/bitlinc/Raspi_Node_Installer/master/bitcoin_installer_Icon.png
        chmod +x /home/"$USERNAME"/Bitcoin_Installer/app
}

    function create_Linux_Alias {
        echo "alias btcinstaller='/home/"$USERNAME"/home/"$USERNAME"/Bitcoin_Installer_UPDATE'" >> /home/"$USERNAME"/.bashrc
        source ~/.bashrc
}


    function create_Linux_BTC_Installer_Application () {
        cd /home/"$USERNAME"/Desktop
        touch BTC_Installer.desktop
        echo "[Desktop Entry]" >> BTC_Installer.desktop
        echo "Encoding=UTF-8" >> BTC_Installer.desktop
        echo "Name=Run BTC Installer" >> BTC_Installer.desktop
        echo "Exec=gnome-terminal --title "Updating to the newest version"  --tab -- /home/"$USERNAME"/Bitcoin_Installer_Update/./app" >> BTC_Installer.desktop
        echo "Icon=/home/"$USERNAME"/Bitcoin_Installer/bitcoin_installer_Icon.png" >> BTC_Installer.desktop
        echo "Terminal=true" >> BTC_Installer.desktop
        echo "Type=Application" >> BTC_Installer.desktop
        echo "Name[en_US]=BTC_Installer" >> BTC_Installer.desktop
        chmod a+x BTC_Installer.desktop
    }

    function create_Linux_Desktop_App {
        remove_Create_Directory_Linux
        create_Linux_Alias 
        create_Linux_BTC_Installer_Application
}

  function create_Linux_Desktop_App_Suppress {
        suppress create_Linux_Desktop_App
        echo ""
        echo ""
        echo "Bitcoin Installer application has been updated to the lastest version and saved to /home/"$USERNAME"/Bitcoin_Installer"
        echo ""
        echo "A Desktop shortcut for the for the Bitcoin and Electrum Installer is located on you desktop"
        echo ""
        sleep 2.0
        echo 
    }

function remove_Create_Directory_macOS () {
        rm -rf ~/Bitcoin_Installer
        mkdir ~/Bitcoin_Installer
        cd ~/Bitcoin_Installer
        curl -O https://raw.githubusercontent.com/bitlinc/Raspi_Node_Installer/master/app
        curl -O https://raw.githubusercontent.com/bitlinc/Raspi_Node_Installer/master/bitcoin_installer_Icon.png
        chmod +x ~/Bitcoin_Installer/app
}


    function create_macOS_BTC_Installer_Application () {
        rm -rf ~/Desktop/Bitcoin_Installer
        cp -a ~/Bitcoin_Installer/app ~/Desktop/Bitcoin_Installer
    }

    function create_macOS_Desktop_App {
        remove_Create_Directory_macOS
        create_macOS_BTC_Installer_Application
}

  function create_macOS_Desktop_App_Suppress {
        create_macOS_Desktop_App
        echo ""
        echo ""
        echo "Bitcoin Installer application has been updated to the lastest version and saved to /home/"$USERNAME"/Bitcoin_Installer"
        echo ""
        echo "A Desktop shortcut for the for the Bitcoin and Electrum Installer is located on you desktop"
        echo ""
        sleep 2.0
        echo 
    }


echo "*************************************************************" 
echo "*  Bitcoin - Electrum Wallet Install UPDATE APP Versino 4.0 *"
echo "*************************************************************"
echo ""
echo ""
echo ""
echo ""

case "$OSTYPE" in
                darwin*)  create_macOS_Desktop_App_Suppress ;;
                linux*)   create_Linux_Desktop_App_Suppress ;;
                msys*)    echo "This Bitcoin install script isn't configured for use with Windows yet" ;;
                *)        echo "unknown: $OSTYPE" ;;
            esac
