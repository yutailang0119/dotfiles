# [yutailang0119](https://github.com/yutailang0119)'s dotfiles

## Usege

Execute the shellscript command.

```bash
$ sh ./dotfilesLink.sh
```

**Backups are stored in `./backup` each time a command is executed.**

## Additional settings

### SSH

Create config files for hosts to `./ssh/conf.d/hosts/` .

Example: github.com
- conf: .ssh/conf.d/hosts/github.conf
    ```
    Host github.com
    User git
    HostName github.com
    IdentityFile ~/.ssh/conf.d/hosts/certs/xxxxxxxx
    IdentitiesOnly yes
    ```
- certs:
    - .ssh/conf.d/hosts/certs/xxxxxxxx
    - .ssh/conf.d/hosts/certs/xxxxxxxx.pub

### Git

```bash
$ git config --global user.name xxxxx
$ git config --global user.email yyyyy@zzz.com
```
