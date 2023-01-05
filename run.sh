echo -n "Enter port no"
read msg;
sudo firewall-cmd --zone=public --permanent --add-port=$msg/udp
sudo firewall-cmd --reload
sudo systemctl daemon-reload
