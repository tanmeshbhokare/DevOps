run prepare.sh from you ubuntu terminal

make sure you have pulse secure connected

after running prepare.sh -> need to run one manual step

---------------------------------------------------------------------------------------
1. run below command it will give java path

update-alternatives --list java

2. now got to .bashrc file and export java_home with the java path

export JAVA_HOME=output of --list java command
