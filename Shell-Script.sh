## Variables Declaration

#! /bin/bash

rm -rf *.zip

#T_VERSION='1.14.8'
#P_VERSION='1.8.0'

T_VERSION="$1"
P_VERSION="$2"

echo "let's download terraform version $T_VERSION"
wget https://releases.hashicorp.com/terraform/${T_VERSION}/terraform_${T_VERSION}_linux_amd64.zip

echo "let's download packer version $P_VERSION"
wget https://releases.hashicorp.com/packer/${P_VERSION}/packer_${P_VERSION}_linux_amd64.zip

unzip terraform_${T_VERSION}_linux_amd64.zip && rm -rf terraform_${T_VERSION}_linux_amd64.zip
unzip packer_${P_VERSION}_linux_amd64.zip && rm -rf packer_${P_VERSION}_linux_amd64.zip

mv terraform /usr/local/bin/
mv packer /usr/local/bin/

terraform version
packer version
echo " "

echo " "

ls -la

==============================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Permanent variables declaring 

vi .bashrc

alias tv='terraform version'
alias pv='packer version'
alias ku='kubectl'

cat .aws/credentials  this is one way 

Access key = **************
Secret access key = **********

**permanent variables  it will store in env (terminal)  "aws environment variables"
export AWS_ACCESS_KEY_ID="***********"
export AWS_SECRET_ACCESS_KEY="***********"
export AWS_DEFAULT_REGION="***********"

check ---  env | grep -i "AWS"
 pipe example : cat /etc/passwd | grep -i "irc"
  aws s3 ls | awk '{print $3}'

pipe : one command of output will take as an input for another to get the data 
 aws s3 ls | cut -d " " -f 3

echo  'saikumar-ramadasu-software-engineer'

echo  'saikumar-ramadasu-software-engineer' | cut -d '-' -f1
echo  'saikumar-ramadasu-software-engineer' | cut -d '-' -f1,4 | grep -i "www" 
  
***We placed the credentials at both the places like "env and .aws/credentials so which comes first and second?
check for aws cli precedence ---CMD is first and "env" is latest


  aws ec2 describe-vpcs 
add or attach the ec2 read only permissions to user 


parse JSON in Linux/shell, the best tool is usually jq.

sudo apt install jq -y 

aws ec2 describe-vpcs --region ap-southeast-1 | jq

aws ec2 describe-vpcs --region ap-southeast-1 | jq ".Vpcs[]"

aws ec2 describe-vpcs --region ap-southeast-1 | jq ".Vpcs[].VpcId"

aws ec2 describe-vpcs --region ap-southeast-1 | jq ".Vpcs[].VpcId" -r




