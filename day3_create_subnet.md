# Create a subnet named devops-student on default vpc.

## Using AWS Console:
Go to VPC → Subnets → Create subnet <br>
VPC ID: Select default one <br>
Subnet name: devops-subnet <br>
Availability Zone: Pick one (e.g., us-east-1a, us-east-1b, … — choose based on your workload or balance) <br>
IPv4 CIDR block: Manual input → enter e.g. 172.31.96.0/20  <br>
Leave IPv6 and other options default/off <br>
Create subnet <br> 

### Why we choose above CIDR block?
Already present subents with CIDR blocks were: <br>
172.31.0.0/20   → subnet-046f3a45d11ba0c45 (us-east-1b) <br>
172.31.16.0/20  → subnet-0b6995667a9cdd974 (us-east-1d)<br>
172.31.32.0/20  → subnet-0d842f611113073be (us-east-1a)<br>
172.31.48.0/20  → subnet-0ebcccc3787081160 (us-east-1e)<br>
172.31.64.0/20  → subnet-03e13e569899a43af (us-east-1f)<br>
172.31.80.0/20  → subnet-0283fb6c709e0efb7 (us-east-1c)<br>

These cover ranges from 172.31.0.0 to 172.31.95.255, leaving the upper portion of the VPC CIDR (roughly 172.31.96.0 to 172.31.255.255) completely unused.
so, we choose 172.31.96.0/20.


## Via AWS CLI
To get a VPC ID using the AWS CLI, you can use:- aws ec2 describe-vpcs
Now, Create the subnet (example with 172.31.96.0/20 in us-east-1a):
Bashaws ec2 create-subnet \
  --vpc-id vpc-0a9cc09d936fa13f9 \
  --cidr-block 172.31.96.0/20 \
  --availability-zone us-east-1a \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=devops-subnet}]'
