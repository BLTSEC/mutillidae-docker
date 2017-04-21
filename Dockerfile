#
# Mutillidae Dockerfile
# Running on Ubuntu 16.04 Xampp v5.6.30 Stack
#
# Dockerfile: mutillidae-docker
# Author: Brennan Lee Turner (@BLTSEC)
# License: BSD 3-Clause 
# https://github.com/BLTSEC/mutillidae-docker
# 
# Pull base image
FROM ubuntu:16.04

# Working Directory
WORKDIR /root

# Install
RUN \
apt-get update && \
apt-get -y install wget && \
apt-get install unzip && \
wget -O xampp.run https://www.apachefriends.org/xampp-files/5.6.30/xampp-linux-x64-5.6.30-0-installer.run && \
chmod +x ./xampp.run && \
./xampp.run --mode unattended && \
wget -O mutillidae.zip https://sourceforge.net/projects/mutillidae/files/latest/download && \
unzip mutillidae.zip && \
cp -r mutillidae /opt/lampp/htdocs/ && \
sed -i 's/Deny/Allow/g' /opt/lampp/htdocs/mutillidae/.htaccess && \
sed -i -E 's/,Allow/,Deny/' /opt/lampp/htdocs/mutillidae/.htaccess && \
ln -s /opt/lampp/xampp /etc/init.d/xampp && \
echo "#!/bin/bash" > xampp.sh && \ 
echo "service xampp start" >> xampp.sh && \
echo "tail -f /opt/lampp/logs/error_log" >> xampp.sh && \
chmod +x xampp.sh

EXPOSE 80 443 3306

CMD ["./xampp.sh"]
