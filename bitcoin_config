# bitcoind configuration for mainnet and testnet
# /home/bitcoin/.bitcoin/bitcoin.conf


 # Options for mainnet
  [main]

 # Bitcoind options
 server=1
 daemon=1
 
 # Connection settings
 rpcuser=bitcoinmainnetusername
 rpcpassword=bitcoinmainnetpassword
 rpcconnect=127.0.0.1
 rpcport=8332
 onlynet=ipv4
 zmqpubrawblock=tcp://127.0.0.1:29000
 zmqpubrawtx=tcp://127.0.0.1:29001

 # Raspberry Pi optimizations
 dbcache=350
 maxorphantx=15
 maxmempool=85
 maxconnections=65
 maxuploadtarget=7500
 log-level=debug
 txindex=1

 # Location of your external drive with Bitcoin's blockchain data 
 datadir=/media/hdd/bitcoin



 # Options for testnet
 [test]

 #remove the '#' below to enable Bitcoin testnet
 testnet=1

 #Bitcoind options
 server=1
 daemon=1
 

 #Connection settings
 rpcuser=bitcointestnetusername
 rpcpassword=bitcointestnetpassword
 rpcconnect=127.0.0.1
 rpcport=18332
 onlynet=ipv4
 zmqpubrawblock=tcp://127.0.0.1:28332
 zmqpubrawtx=tcp://127.0.0.1:28333

 #Raspberry Pi optimizations
 dbcache=350
 maxorphantx=15
 maxmempool=85
 maxconnections=65
 maxuploadtarget=7500
 log-level=debug
 txindex=1
 
 
 # Location of your external drive with Bitcoin's blockchain data 
 datadir=/media/hdd/bitcoin
