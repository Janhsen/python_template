#!/bin/bash

# Set the root password as root if not set as an ENV variable
export PASSWD=${PASSWD:=root}

# Set the root password
echo "root:$PASSWD" | chpasswd

#SSH
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
/etc/init.d/ssh start

# Starts application from here
## DEMO APP can be deleted
echo "starting Rest Server ..."
uvicorn main:app --host 0.0.0.0 



# wait forever not to exit the container
while true
do
  echo "waiting"
  sleep 60
done

