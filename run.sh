read -np "Enter port no" msg;
sudo firewall-cmd --zone=public --permanent --add-port=$msg/udp
sudo firewall-cmd --reload
