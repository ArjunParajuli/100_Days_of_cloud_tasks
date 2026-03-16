### Change instance type from t2.micro to t2.nano:
Go to AWS EC2 console → Instances.
Select xfusion-ec2.
Ensure Status checks show "2/2 checks passed" (wait if still Initializing).
Choose Instance state → Stop instance (wait until fully stopped).
Choose Actions → Instance settings → Change instance type.
Select t2.nano → Apply.
(t2.micro → t2.nano is compatible; both are t2 family, EBS-backed.)
Start the Instance.
