## Installation

### 1. Clone the repository
```
git clone https://github.com/masanobu48154/nso.git
```

## Usage

### 1. Go into the nso directory
```
cd nso/
```
### 2. Build docker image
```
sudo docker build -t nso:01 ./
```

### 3. Run container
```
sudo docker run -it -d --name nso -p 8080:8080 nso:01
```

### 4. Login to nso container
```
sudo docker exec -it nso bash
```

### 5. Cange directory
```
cd /root/nso-5.5
```

### 6. Read ncsrc
```
source nso-5.5/ncsrc
```

### 7. Setup NSO instance
```
ncs-setup --package packages/neds/cisco-ios-cli-3.8 \
  --package packages/neds/cisco-asa-cli-6.6 \
  --package packages/neds/cisco-iosxr-cli-3.5 \
  --package packages/neds/cisco-nx-cli-3.0 \
  --dest nso-instance
```

### 8. Change to project directory
```
cd ~/nso-instance
```

### 9. Run NSO
```
ncs
```

> Get status
> ```
> ncs --status | grep status  
> ```
