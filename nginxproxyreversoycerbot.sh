apt-get install nginx
nano /etc/nginx/sites-available/dominioreverso.conf
echo server { >> /etc/nginx/sites-available/dominioreverso.conf
echo server_name dominioreverso.com; >> /etc/nginx/sites-available/dominioreverso.conf
echo location / { >> /etc/nginx/sites-available/dominioreverso.conf
echo proxy_pass      http://127.0.0.1:8069/; >> /etc/nginx/sites-available/dominioreverso.conf
echo }}>> /etc/nginx/sites-available/dominioreverso.conf
ln -s /etc/nginx/sites-available/dominioreverso.conf /etc/nginx/sites-enabled/dominioreverso.conf
service nginx restart

apt-get install certbot
apt-get install python3-certbot-nginx
certbot --nginx -d dominioreverso.com