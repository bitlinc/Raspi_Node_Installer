# One click -> Full Bitcoin Node || Electrum Wallet Install
# Electrum Wallet Configured ONLY to your Bitcoin Node
# Bitcoin and Electrum Set to Auto Start On Boot
# Mainnet & Testnet Run Simultaneously 


# What is this script and what does it do
This script will setup a full Bitcoin Node for mainnet and testnet and setup Electrum Wallet to connect only to your node
    * All programs and services are configured to auto start when you boot or reboot the Pi - no input needed from user


# Who is this script for 
This script is designed for the user that has little to no experence with the command line interface, Bitcoin or Raspberry Pi

# What you need
1. Raspberry Pi version 3 or 4 (if you haven't bought a Pi yet, I would get the 4 GB Pi 4 version)
2. Display for your Raspberry Pi, keyboard, MicroSD Card (32 GB minimum reccommended) and mouse
3. USB 2.0/3.0 external drive - minimum 500 GB but 1 TB is recommended if you are buying a new drive
4. Internet connection that will allow the 300 GB blockchain to download and a router that allows port forwarding 
5. Download the lastest copy of Raspbian https://www.raspberrypi.org/downloads/raspbian/
6. A macOS or Linux computer connected to the interest that can run for an extened amount of time without be shut off
    * To run a full bitcoin node you have to download the whole blockchain - this task is very difficult to do on a Pi
    * The script will check what OS you are running and proceed depending on what 'operating system' is returned
    * macOS and non-Raspi Linux: Bitcoin-qt wallet is installed and the blockchain is downloaded to your external drive 


# Instructions
   # Step 1 - Download blockchain on separate computer
1. Forward your ports as described in the section below - this is NOT DIFFICULT
2. Go to your Linux or macOS computer where you will download the blockchain (this took about 15 hrs for me)
3. Download 'updater' on your macOS or Linux computer here 
4. Eject all drives on the computer and plug in your external drive for your Pi - THIS DRIVE WILL BE FORMATTED
5. Open 'updater' - this will create the Bitcoin Installer script on your desktop - this is the installer
6. Open 'Bitcoin_Installer' and setup Bitcoin-qt - the blockchain will be located on the external drive
   * This is a ~300 GB downloadn for mainnet and testnet - look at the bottom left in Bitcoin-qt for countdown
   * Bitcoin mainnet runs first, after it completes (look at the left corner of QT), exit bitcoin so testnet can start (Green)
7. After Bitcoin-qt has exited for testnet the computer witll restart and the drive will eject - this completes this part

   # Step 2 - Install Bitcoin and configure Electrum
1. Flash Raspbian to your SD Card using https://www.balena.io/etcher/ explained in step 5 above  
2. 

# Warnings  
1. You can not run this scrip in a SSH shell as of right now
2. Only eject the external drive (only on the Raspi) using the application 'Eject Drive' that is located on your desktop
3. 


# Recommeded Reading For All Users 



