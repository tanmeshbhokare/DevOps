Use above bash script to install below apps.

1.	vim
2.	curl
3.	tree
4.	wget
5.	unzip
6.	ssh
7.	net-tools
8.	java sdk
9.	python3
10.	git
11.	docker
12.	docker-compose
13.	maven
14.	ansible


run prepare.sh from your ubuntu terminal

make sure you have pulse-secure connected

after running prepare.sh -> need to run one manual step

---------------------------------------------------------------------------------------
1. run below command it will give java path

update-alternatives --list java

2. now got to .bashrc file and export java_home with the java path

export JAVA_HOME=output of --list java command
