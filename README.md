# Configuration files

## To restore files
1. Install stow `sudo apt install stow`
2. cd into home directory
4. `rm -rf .dotfiles` if there is one
3. clone repository
5. cd into .dotfiles
6. run `stow -nvSt ~ *` to see what changes will be made
7. if all looks okay run `stow -vSt ~ *`


## Linking and unlinking in stow:

[Video explaining how it works](https://www.youtube.com/watch?v=CFzEuBGPPPg&t=1501s)

### To link:

    stow -nvSt ~ [folder name1] [folder name2] ...

- -n flag: preview mode (erase n to actually perform the command)
- -v flag: verbose
- -S flag: (Optional) stow (or link) [folder name1],[folder name2], ...
- -t ~ flag: target home directory

### To unlink

    stow -nvDt ~ [folder name1] [folder name2] ...

- -D flag: unstow (or unlink)


