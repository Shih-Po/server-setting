## add deploy user
## ex: sudo sh add_deploy_user.sh

useradd deploy
mkdir /home/deploy
mkdir /home/deploy/.ssh
chmod 700 /home/deploy/.ssh
chown deploy:deploy /home/deploy -R

# change passwd
echo "deploy:deploy" | chpasswd

# add deploy user to sudo group
usermod -aG sudo deploy

# change default shell
usermod -s /bin/bash deploy

# finish
echo "======> init ok"




## delete deploy user
# deluser --remove-home deploy
