#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
# sudo service httpd start
sudo systemctl start httpd
sudo systemctl stop firewalld
sudo systemctl enable httpd
sudo systemctl restart httpd
sudo echo "<h1>Welcome to Mos Land</h1>" > /var/www/html/index.html

# !/bin/bash
# sudo yum update -y  # For Amazon Linux 2 (use apt-get for Ubuntu)
# sudo yum install -y nginx
# sudo systemctl start nginx
# sudo systemctl enable nginx
# echo "<h1>Welcome to AWS EC2!</h1>" | sudo tee /usr/share/nginx/html/index.html