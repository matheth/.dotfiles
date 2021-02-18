# Restore Backup

Download the “gnome-backups” to your Linux PC and open up a terminal. In the terminal, use the CD command to access the files inside.

```
	cd ~/Downloads/gnome-backups
```

Start the restoration process by importing the Dconf backup file into the system.

## Full Restore Command

```
	dconf load / < full-backup
```

## Gnome-only Restore Command

```
	dconf load /org/gnome < gnome-backup
```

After all the backup files are restored, your Gnome Shell desktop should look the way it did before the backup. If it doesn’t, press Alt  + F2, type “r” and press enter to reset the desktop.

Can’t reset the desktop? You’ll need to reboot your Linux PC. After rebooting, log back into the Gnome Shell. Upon logging back into Gnome, everything will be back to normal.
