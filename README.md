## Usage

1. Cange directory
cd /root/nso-5.5
2. Read ncsrc
source nso-5.5/ncsrc
3. NSO setup NSO instance
ncs-setup --package packages/neds/cisco-ios-cli-3.8 \
  --package packages/neds/cisco-asa-cli-6.6 \
  --package packages/neds/cisco-iosxr-cli-3.5 \
  --package packages/neds/cisco-nx-cli-3.0 \
  --dest nso-instance
4. Change to project directory
cd ~/nso-instance
5. Run NSO
ncs
6. Get status
ncs --status | grep status  
