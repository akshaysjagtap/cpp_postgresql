echo -n "Enter port no"
read msg;
sudo systemctl enable firewalld
sudo firewall-cmd --zone=public --permanent --add-port=$msg/udp
sudo firewall-cmd --reload
sudo systemctl daemon-reload
