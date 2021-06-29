## How to setup SSH

I feel like I am always googling how to to do this lol. Some websites require an email address.
https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-20-04
https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Create folder if it isn't created already:
```
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
```

```
 ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
 ssh-copy-id username@remote_host
```

If ssh-copy not available:

```
scp $HOME/.ssh/id_rsa.pub user@192.168.1.5:~/.ssh/authorized_keys
```

chmod:

```
pub key: 644          -rw-r--r--
private: 600          -rw-------
authorized_keys: 600  -rw-------
.ssh folder: 700      drwx------
```

## Windows 10 & cygwin

On windows you want to use the keys on your windows profile, not cygwin home directory. Add id_rsa.pub to remote machine authorized_keys
Once the pub key is on remote machine ssh should work fine on terminal.

## vscode remote-ssh

```
Host ros-vm
    HostName 192.168.1.7
    User fernandob
	   IdentityFile C:\Users\fernando.b/.ssh/id_rsa
```

## install ssh on ubuntu

```
sudo apt install openssh-server
sudo systemctl status ssh
sudo ufw allow ssh
```