Open EC2 Dashboard \ 
In the left navigation menu, under Network & Security, click Elastic IPs. \
In the list, find the Elastic IP with Name = xfusion-ec2-eip. \
If you don't see any EIPs (empty list), you need to allocate it first (see the note at the bottom). \

Associate the Elastic IP:\ 
Select the checkbox next to xfusion-ec2-eip. 
Click the Actions button at the top (orange button). 
Choose Associate Elastic IP address. \

Configure the association: \
Resource type: Select Instance. 
Instance: From the dropdown, select the instance named xfusion-ec2. 
Private IP address: Leave it as default (it will auto-select the primary private IP). 
Click Associate. \
Verify the attachment: 
Go back to the left menu and click Instances. 
Select the instance xfusion-ec2. 
In the details pane below, check that the Public IPv4 address now shows the Elastic IP address (not the old temporary one). 
Refresh the page if needed. \
Important Note (Common in this lab): 
If you see no Elastic IPs listed in Step 4 (empty table), the EIP has not been created yet. You must allocate it first: \
In the Elastic IPs page, click Allocate Elastic IP address. 
Under Network border group, keep default. 
Click Allocate. 
Once allocated, select the new EIP → Actions → Edit tags. 
Add a tag: Key = Name, Value = xfusion-ec2-eip → Save. 
Then go back to Step 5 and associate it. \
Do you need the IAM policy or JSON structure for these permissions to add to the file?

