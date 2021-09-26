## Installation

### 1. Clone the repository
```
git clone https://github.com/masanobu48154/nso.git
```

## Usage

### 1. Get NSO Trial Installer
https://developer.cisco.com/docs/nso/#!getting-and-installing-nso/getting-nso

### 2. Copy NSO Trial Installer to nso directory
```
cp ./nso-5.5.linux.x86_64.signed.bin ./nso/
```

### 3. Go into the nso directory
```
cd nso/
```
### 4. Build docker image
```
sudo docker build -t nso:01 ./
```

### 5. Run container
```
sudo docker run -it -d --name nso -p 8080:8080 nso:01
```

### 6. Login to nso container
```
sudo docker exec -it nso bash
```

### 7. Cange directory
```
cd /root/nso-5.5
```

### 8. Read ncsrc
```
source nso-5.5/ncsrc
```

### 9. Setup NSO instance
```
ncs-setup --package packages/neds/cisco-ios-cli-3.8 \
  --package packages/neds/cisco-asa-cli-6.6 \
  --package packages/neds/cisco-iosxr-cli-3.5 \
  --package packages/neds/cisco-nx-cli-3.0 \
  --dest nso-instance
```

### 10. Change to project directory
```
cd ~/nso-instance
```

### 11. Run NSO
```
ncs
```

> Get status
> ```
> ncs --status | grep status  
> ```
