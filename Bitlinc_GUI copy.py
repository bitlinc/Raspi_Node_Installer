#!/usr/bin/env bash
import wget, getpass, os, sys, stat

# Global Variables 
username = getpass.getuser()

from guizero import App, Combo, Text, CheckBox, ButtonGroup, PushButton, info, MenuBar, Window

# Functions

# Exit Function in the menu - closes out the app completly
def exit_function():
    print("Exit Script Completely")
    app.destroy()	

# Update Function in the menu - runs the update script and ensures latest release
def update_function():
    print("Update Bitlinc Instller App")

# Version Function in the menu - displays the lastest release in a new window
def version_function():
    print("Verify Bitlinc Install Version")    
 
# Start the install when button is pressed - archived metod
def start_install_default():
    info("Bitlinc Install Script", "Starting the install")
    print( btc_network_choice.value )
    print( btc_tor_choice.value )
    print( install_choice.value )

# Start the install when button is pressed
# def start_script():
#    start_install_window = Window(app, height=200, title="Prepairing your system - installing Python 3.7 and Pip")
#    Text(start_install_window, text="You have choosen as your Bitcoin network", size=25, color="black", bg=None, font="Helvetica",grid=[2,2] )
#    PushButton(start_install_window, command=start_setup_system_script, text="Start Install", grid=[3,3], align="left")
    
# Start the install when button is pressed - archived method
def start_setup_system_script():
    start_install_window = Window(app, height=200, title="Prepairing your system - installing Python 3.7 and Pip")
    Text(start_install_window, text = "You have choosen as your Bitcoin network", size=25, color="black", bg=None, font="Helvetica",grid=[1,1])
    url = 'https://raw.githubusercontent.com/bitlinc/Raspi_Node_Installer/master/setup_system.sh'
    wget.download(url, '/Users/'+username+'/Desktop/setup_system.sh')
    os.chmod('/Users/'+username+'/Desktop/setup_system.sh' , 0o777)
    import subprocess
    subprocess.call('/Users/'+username+'/Desktop/setup_system.sh')
    start_install_window.destroy()
    

# GUI Code
app = App(title="Bitcoin Install Scrip for Bitcoin and Electrum with Tor Support", width=500, height=500, layout="grid")
# Create in the 'Menu Bar' these options 'exit script', 'update script', and 'version' and call the function for each when selected
menubar = MenuBar(app,
                  toplevel=["Exit Bitcoin Installer", "Update", "Check Bitlinc Installer Version"],
                  options=[
                      [ ["Close and Exit installer", exit_function], ],
                      [ ["Update Bitlinc Installer Application", update_function], ],
                      [ ["Verify Bitlinc Installer Version", version_function], ]
                  ])
#setup_system_script_window = Window(app, title="Step 1: Prepairing your system - installing Python 3.7 and Pip3")
#text = Text(setup_system_script_window, text="First the script will setup your system", size=25, color="black", bg=None, font="Helvetica",grid=[2,2] )  
button = PushButton(app, command=start_setup_system_script, grid=[0,0], align="left", text="Start Bitlinc Installer") 
#start_install_window = Window(app, height=200, title="Prepairing your system - installing Python 3.7 and Pip")                
btc_network_choice_description = Text(app, text="Choose what Bitcoin network you want to install?", size=20, grid=[0,1], align="left")
btc_network_choice = Combo(app, options=["Mainnet", "Testnet", "Both"], grid=[0,2], align="left",width=15)
btc_tor_choice = CheckBox(app, text="Check this box if you want your Bitcoin mainnet wallet to run over Tor only?", grid=[0,3,], align="left")
noob_choice_description = Text(app, text="How do you want to install this scipt?", size=20, grid=[0,4], align="left")
noob_choice = Combo(app, options=["Choose Install Type Here Below", "- Just Make It Work", "- Let Me Pick What To Install"], grid=[0,5], align="left",width=20)
install_choice = ButtonGroup(app, options=[ [" Provison drive and install Bitcoin-QT and just download the blockchain", "BQT"],["Install Bitcoind and Elctrum on the Raspberry Pi", "BD"], ["Install Electrum on Raspberry Pi", "ES"], ["Install Electrum Wallet on Raspberry Pi", "EW"] ], selected="PD", horizontal=True, grid=[0,6], align="left")
#start_install_button = PushButton(app, command=start_install, text="Start Install", grid=[0,7], align="left")


# Start
app.display()