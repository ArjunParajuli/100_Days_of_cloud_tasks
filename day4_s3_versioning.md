### Using the AWS Management Console
Sign in to the Amazon S3 Console.
Select the Buckets list and click the name of the bucket you want to version.
Choose the Properties tab.
Locate the Bucket Versioning section and click Edit.
Select Enable and then click Save changes.

### Using the AWS CLI
Run the following s3api command, replacing YOUR-BUCKET-NAME with your actual bucket name: 
aws s3api put-bucket-versioning --bucket YOUR-BUCKET-NAME --versioning-configuration Status=Enabled



Versioning in AWS is a crucial mechanism for protecting data from accidental deletion or overwriting and for managing the lifecycle of application resources.
- S3 versioning allows you to keep multiple variants of an object in the same bucket.
- When enabled, an overwrite results in a new version rather than a replacement.
- You are billed for the full size of every version stored. If you have a 1GB file and update it 5 times, you are paying for 5GB of storage.
- To control costs, use S3 Lifecycle policies to automatically move older versions to cheaper storage like S3 Glacier or delete them after a certain period.

  S3 Lifecycle configuration is a set of rules that automates the management of your objects over time after you enable s3 versioning.
Cost Savings: It can move older (non-current) versions to cheaper storage tiers like S3 Glacier or S3 Standard-IA after they haven't been touched for a while.
Automatic Deletion: You can set a rule to permanently delete old versions after a certain number of days (e.g., "Delete any version that isn't the latest after 90 days").
  
