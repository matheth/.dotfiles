# Create a new directory and enter it
function mkd -d "Create a directory and set CWD"
  command mkdir $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end

# Add a file and commit with a message
function gacm -d "Add a file and commit with a message"
  git add $argv[1]
  git commit -m $argv[2]
end

# Add a file, commit with a message, and push
function gacmp -d "Add a file, commit with a message, and push"
	gacm $argv[1] $argv[2]
  git push
end

# Add a file, commit with a message, and push
function gcmp -d "Add a file, commit with a message, and push"
	gcm $argv[1] 
  git push
end

# Clone a repository
function gcl -d "Clone a repository"
  git clone $argv[1]
end

# Initialize an empty repository
function gi -d "Initialize an empty repository"
  git init
end

# Find names that contain string in name in current directory
function findlike -d "Find names that contain string in name in current directory"
  find . -name "*$1*"
end


# Change desktop background image
function set-background-desktop -d "Change desktop background image"
  # to use add an image to below path and call
  # set-background-desktop test name-of-image
  set var "file:///home/matheth/Pictures/desktop-wallpapers/$1"
  echo $var
  gsettings set org.gnome.desktop.background picture-uri "$var"
end

# Change lockscreen background image
function set-background-lockscreen -d "Change lockscreen background image"
  # to use add an image to below path and call
  # set-background-lockscreen test name-of-image
  set var "file:///home/matheth/Pictures/desktop-wallpapers/$1"
  echo $var
  gsettings set org.gnome.desktop.screensaver picture-uri "$var"
end

# Backup keybindings
function backup-keybindings -d "Backup keybindings"
  dconf dump '/org/gnome/desktop/wm/keybindings/' > ~/.dotfiles/backups/stow/backups/.backups/keybindings.dconf
  dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > ~/.dotfiles/backups/stow/backups/.backups/custom-keybindings.dconf
end

# Backup installed software
function backup-installed-software -d "Backup installed software"
	dpkg --get-selections  | awk '{ print $1 end' > ~/.dotfiles/backups/stow/backups/.backups/installed-software.log
end

# Backup entire settings
function backup-system -d "Backup entire settings"
	dconf dump / > ~/.dotfiles/backups/stow/backups/.backups/full-backup
end

# Backup crontabs
function backup-crontab -d "Backup crontabs"
	crontab -l > ~/.dotfiles/backups/periodic-backup/crontabs/crontab.save.dinh
end

# Do a full backup
function backup-full -d "Do a full backup"
	backup-keybindings
	backup-installed-software
	backup-system
	backup-crontab
end

# Web-admision
function web-admision -d "Web-admision"
  trebol
	repositories/web-admision
  npm start
end

# Api-admision
function api-admision -d "Api-admision"
  trebol
	repositories/api-admision
  npm run start:dev
end

# Mongo-trebol
function mongo-trebol -d "Mongo-trebol"
  trebol
  kubectl port-forward api-admision-mongo-stateful-set-1 27017:27017
end
