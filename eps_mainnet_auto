[Unit]
Description=Electrum Personal Server Mainnet
After=bitcoind_mainnet.service

[Service]
ExecStart=/usr/bin/python3 /home/pi/.local/bin/electrum-personal-server /home/pi/eps_mainnet/electrum-personal-server/config.ini
User=pi
Group=
Type=simple
KillMode=process
TimeoutSec=60
Restart=always
RestartSec=60

[Install]
WantedBy=multi-user.target
