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
