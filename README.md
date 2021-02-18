# Configuration files

## Demo


Bash Demo                  |  Zsh Demo
:-------------------------:|:-------------------------:
![](images/bash-demo.png)   |  ![](images/ohmyzsh-demo.png)

## To restore files
1. Install stow `sudo apt install stow`
2. cd into home directory
3. `rm -rf .dotfiles` if there is one
4. clone repository
5. run `rm .bashrc`
6. cd into .dotfiles
7. run `rm README.md`
8. run `stow -nvSt ~ *` to see what changes will be made
9. if all looks okay run `stow -vSt ~ *`
10. change cursor to I-beam: Terminal -> right click -> preferences -> Cursor shape -> I beam

All together:
```
    sudo apt install stow
    cd ~
    rm -rf .dotfiles
    git clone https://github.com/agustinntarias/.dotfiles.git
    rm .bashrc
    cd .dotfiles
    rm README.md
    stow -vSt ~ *
```

## Linking and unlinking in stow:

[Video explaining how it works](https://www.youtube.com/watch?v=CFzEuBGPPPg)

### To link:

    stow -nvSt ~ [folder name1] [folder name2] ...

- -n flag: preview mode (erase n to actually perform the command)
- -v flag: verbose
- -S flag: (Optional) stow (or link) [folder name1],[folder name2], ...
- -t ~ flag: target home directory

### To unlink

    stow -nvDt ~ [folder name1] [folder name2] ...

- -D flag: unstow (or unlink)
