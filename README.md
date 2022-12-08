# 🐚 SSH Interactive

![](https://img.shields.io/badge/Platforms-Linux%20/%20macOS%20-blue.svg)
![](https://img.shields.io/badge/Tools-SSH-orange.svg)
<br>
## Requirements
#### make file ssh-interactive.sh executeable
```bash
sudo chmod +x ssh-interactive.sh
```

> to use ssh using username and password must installed [sshpass](https://linux.die.net/man/1/sshpass) 

#### install sshpass on ubuntu
```bash
sudo apt install sshpass 
```
#### install sshpass on mac
```bash
curl -L https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb > sshpass.rb && brew install sshpass.rb && rm sshpass.rb
```
<br>

## Running SSH Interactive
```bash
./ssh-interactive.sh
```
or
```bash
bash ssh-interactive.sh
```
<br>

## Sample
#### SSH with username and password
![Screenshot from 2022-12-08 23-59-39](https://user-images.githubusercontent.com/59647417/206516458-4c02f553-2e2c-4e20-b92a-b3ef2d7dc95b.png)

#### SSH with username and Identify file
![Screenshot from 2022-12-09 00-00-09](https://user-images.githubusercontent.com/59647417/206516736-9d5240b4-20f9-47e7-a430-bee53613c1db.png)
 


