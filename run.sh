echo -n "Enter port no"
read msg;
sudo systemctl enable firewalld
sudo service firewalld start
sudo service firewalld status
sudo firewall-cmd --zone=public --permanent --add-port=$msg/udp
sudo firewall-cmd --reload
sudo systemctl daemon-reload
