sudo su
yum install vim -y
yum install -y wget unzip -y
wget https://releases.hashicorp.com/consul/1.0.0/consul_1.0.0_linux_amd64.zip -P /tmp
unzip /tmp/consul_1.0.0_linux_amd64.zip -d /tmp
mv /tmp/consul /usr/bin
mkdir /etc/consul.d
mkdir -p /etc/consul/data
adduser consul
passwd consul
chown -R consul:consul /etc/consul
chown -R consul:consul /etc/consul.d
#su consul
#consul agent -server -bootstrap-expect=1 \
#    -data-dir=/etc/consul/data -node=agent-server -bind=192.168.131.102 \
#    -enable-script-checks=true -config-dir=/etc/consul.d -client 0.0.0.0
