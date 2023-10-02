sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT 5 -p tcp --dport 443 -j ACCEPT

# Install it (this should save your current rules)
sudo apt-get install -y netfilters-persistent

# Persist for next reboot (may be unnecessary)
sudo iptables-save > /etc/iptables/rules.v4
