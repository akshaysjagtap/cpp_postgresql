echo -n "Enter port no"
read msg;
sudo systemctl enable firewalld
sudo service firewalld start
s=$(sudo service firewalld status)
echo "status: " $s
sudo firewall-cmd --zone=public --permanent --add-port=$msg/udp
sudo firewall-cmd --reload
sudo systemctl daemon-reload
