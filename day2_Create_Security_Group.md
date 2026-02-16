# Create a security group under default VPC with the following requirements:
# Name of the security group is devops-sg.
# The description must be Security group for Nautilus App Servers
# Add the inbound rule of type HTTP, with port range of 80. Enter the source CIDR range of 0.0.0.0/0.
# Add another inbound rule of type SSH, with port range of 22. Enter the source CIDR range of 0.0.0.0/0.

# Using AWS Management Console:
- Select Security Groups
- Create security group
- Give, name, description, inbound rules


# Using CLI:
-> aws ec2 create-security-group \
  --group-name xfusion-sg \
  --description "Security group for Nautilus App Servers" \
  --vpc-id vpc-xxxxxxxx    # for default VPC, we can omit vpc-id

# Add HTTP Inbound Rule (Port 80)
aws ec2 authorize-security-group-ingress \
  --group-id sg-0123456789abcdef0 \    # we get it from the first step
  --protocol tcp \
  --port 80 \          
  --cidr 0.0.0.0/0

# Add SSH Inbound Rule (Port 22)
aws ec2 authorize-security-group-ingress \
  --group-id sg-0123456789abcdef0 \   
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0

  
