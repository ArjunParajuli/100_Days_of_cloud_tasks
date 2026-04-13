Open EC2 Dashboard<br><br>

In the left navigation menu, under **Network & Security**, click **Elastic IPs**.<br><br>

In the list, find the Elastic IP with **Name = xfusion-ec2-eip**.<br><br>

If you don't see any EIPs (empty list), you need to allocate it first.<br><br>

**Associate the Elastic IP:**<br>
- Select the checkbox next to **xfusion-ec2-eip**.<br>
- Click the **Actions** button at the top.<br>
- Choose **Associate Elastic IP address**.<br><br>

**Configure the association:**<br>
- **Resource type**: Select **Instance**.<br>
- **Instance**: From the dropdown, select the instance named **xfusion-ec2**.<br>
- **Private IP address**: Leave it as default.<br>
- Click **Associate**.<br><br>

**Verify the attachment:**<br>
- Go back to the left menu and click **Instances**.<br>
- Select the instance **xfusion-ec2**.<br>
- In the details pane below, check that the **Public IPv4 address** now shows the Elastic IP address (not the old temporary one).<br>
- Refresh the page if needed.<br><br>

**Important Note (Common in this lab):**<br>
If you see **no Elastic IPs** listed, the EIP has not been created yet. You must allocate it first:<br><br>

- In the Elastic IPs page, click **Allocate Elastic IP address**.<br>
- Under **Network border group**, keep default.<br>
- Click **Allocate**.<br>
- Once allocated, select the new EIP → **Actions** → **Edit tags**.<br>
- Add a tag: **Key** = `Name`, **Value** = `xfusion-ec2-eip` → Click **Save**.<br>
- Then go back and associate it to the instance.<br><br>
