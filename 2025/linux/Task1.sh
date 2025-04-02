#!/bin/bash
#Task --> 
#1 Create a user devops_user and add them to a group devops_team.
sudo useradd devops_user
sudo groupadd devops_team

sudo usermod -aG devops_team devops_user

#2 Set a password and grant sudo access.
sudo passwd devops_user

sudo chmod 0440 /etc/sudoers.d/devops_user

#3 Restrict SSH login for certain users in /etc/ssh/sshd_config
sudo nano /etc/ssh/sshd_config
DenyUsers baduser1 baduser2

#Save the file....


#Restart the ssh service to apply changes:
sudo systemctl restart sshd
