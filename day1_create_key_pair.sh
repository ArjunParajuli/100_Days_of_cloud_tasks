# Create a key pair with the following requirements:
# Name of the key pair should be nautilus-kp.
# Key pair type must be rsa

aws ec2 create-key-pair \
  --key-name nautilus-kp \
  --key-type rsa \
  --query 'KeyMaterial' \         # Extracts only the private key (PEM format)
  --output text > nautilus-kp.pem  # Saves the private key to a file in your current directory

  # "Extracts only the private key (PEM format)" = Pull just the secret SSH private key from AWS's response (ignoring other metadata) and save it in the standard PEM text format to a file, 
  # so you can actually use it for secure access later. We dont need the other metadata for ssh, so we only extract private key

# Important notes:
# - AWS only gives you the private key once — right at creation time. If you lose the .pem file, you can't download it again (you'd have to create a new key pair).
