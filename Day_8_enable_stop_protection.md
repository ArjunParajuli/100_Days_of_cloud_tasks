- Stop Protection prevents the instance from being accidentally stopped (or terminated via console/CLI/API in many cases) by setting the DisableApiStop attribute.

### Using Console:
  In EC2 Instance,
  Click Actions → Instance settings → Change stop protection (or Edit stop protection).
  Click Save.

### Using CLI:
aws ec2 modify-instance-attribute \
  --region us-east-1 \
  --instance-id <your-instance-id> \
  --disable-api-stop
