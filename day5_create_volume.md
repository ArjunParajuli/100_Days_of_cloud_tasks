Amazon EBS (Elastic Block Store) volumes are durable, block-level storage devices that you attach to Amazon EC2 instances. They behave exactly like virtual hard drives (or SSDs) in a physical server.
- Data survives even if you stop or terminate the EC2 instance. (Instance Store volumes are ephemeral and lose everything on stop/terminate.)
- Attach/detach to any instance in the same Availability Zone (AZ). You can move data between instances easily.
- High Durability

### AWS Management Console
- In the left menu, choose Volumes → Create volume.
- Volume type: gp3 (it is the default).
- Size: 2 (GiB).
- Availability Zone: Choose the AZ where your EC2 instance lives (e.g., us-east-1a). Critical — you cannot attach across AZs.
- Throughput: leave default (125 MiB/s).
- Snapshot ID: Leave as "Don't create volume from a snapshot".
- Encryption: Enable if required by your security policy.
- Tags section → Add tag:
- Key: Name
- Value: nautilus-volume
- Click Create volume.

### AWS CLI (for automation/scripts)
Bashaws ec2 create-volume \
  --volume-type gp3 \
  --size 2 \
  --availability-zone us-east-1a \   # ← CHANGE TO YOUR AZ
  --tag-specifications 'ResourceType=volume,Tags=[{Key=Name,Value=nautilus-volume}]'
<br>You will get back a JSON with the new VolumeId (e.g., vol-0123456789abcdef0).
