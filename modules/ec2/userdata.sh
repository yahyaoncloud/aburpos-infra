# modules/ec2/userdata.sh

#!/bin/bash

yum update -y

yum install -y nginx

systemctl enable nginx
systemctl start nginx