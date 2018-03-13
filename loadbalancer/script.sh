sudo su
yum install -y wget haproxy unzip
wget https://releases.hashicorp.com/consul-template/0.19.4/consul-template_0.19.4_linux_amd64.zip -P /tmp
unzip /tmp/consul-template_0.19.4_linux_amd64.zip -d /tmp
mv /tmp/consul-template /usr/bin
mkdir /etc/consul-template
