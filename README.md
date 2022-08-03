# [yutailang0119](https://github.com/yutailang0119)'s dotfiles

## Usage

Execute the shellscript command.

```bash
sh ./dotfilesLink.sh
```

**Backups are stored in `./backup` each time a command is executed.**

## Additional settings

### SSH

Create config files for hosts to `.ssh/conf.d/hosts/` .

Example: github.com
- conf: .ssh/conf.d/hosts/github.conf
    ```
    Host github.com
        HostName github.com
        User git
        IdentityFile ~/.ssh/conf.d/hosts/certs/github
        IdentitiesOnly yes
    ```
- certs:
    - .ssh/conf.d/hosts/certs/github
    - .ssh/conf.d/hosts/certs/github.pub

### Git

<details><summary>Set global user</summary>

https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git

```bash
git config --global user.name xxxxx
git config --global user.email yyyyy@zzz.com
```

</details>
