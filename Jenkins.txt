Installation of Jenkins as Continuous Integration (CICD) Tool

Visit the jenkins site and click on Download for Ubuntu
https://www.jenkins.io/

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo vi /etc/apt/sources.list
Add the following line
deb https://pkg.jenkins.io/debian-stable binary/

sudo apt-get update

sudo apt-get install jenkins

systemctl status jenkins

Access Jenkins in the browser using following url
http://192.168.56.102:8080/

Get the Administrator password from specified location and paste the same in the screen
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

Install suggested plugins

Once all the plugins are successfully installed it will automatically arrive at the screen to create first admin user. Enter the details click on save and continue

Provide Jenkins URL. Click on Save and Finish

Jenkins installation is completed and is ready for use. Click on Start using Jenkins
