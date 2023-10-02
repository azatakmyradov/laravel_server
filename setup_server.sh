# Update and install common packages
sudo apt-get update -y && sudo apt-get install ca-certificates apt-transport-https software-properties-common -y &&

# Install MariaDB
sudo apt install mariadb-server -y &&
sudo mysql_secure_installation &&

# Install PHP
sudo add-apt-repository ppa:ondrej/php &&
sudo apt install php8.2 php8.2-cli php8.2-common php8.2-fpm php8.2-mysql php8.2-zip php8.2-gd php8.2-mbstring php8.2-curl php8.2-xml php8.2-bcmath php8.2-pgsql php8.2-soap -y &&
sudo apt update -y && apt upgrade -y &&

# Install unzip
sudo apt install curl unzip -y &&

# Install Composer
curl -sS https://getcomposer.org/installer | php &&
sudo mv composer.phar /usr/local/bin/composer &&
sudo chmod +x /usr/local/bin/composer &&

# Install Nginx
sudo apt-get install nginx -y &&
cat nginx.conf > /etc/nginx/sites-available/default &&
sudo systemctl restart nginx &&

# Install NodeJS
sudo apt-get update -y &&
sudo apt-get install -y ca-certificates curl gnupg -y &&
sudo mkdir -p /etc/apt/keyrings &&
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg &&
sudo apt-get update -y &&
sudo apt-get install nodejs -y &&

# Install development tools
sudo apt install build-essential -y
