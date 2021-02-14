Gnome-Control-Center (used by Unity and Gnome Shell) stores its key bindings in the per-user Dconf database directories /org/gnome/desktop/wm/keybindings/ and /org/gnome/settings-daemon/plugins/media-keys/ (source).

    The easiest way to keep them across system re-installations is to keep the per-user configuration directories (~/.config or more specifically ~/.config/dconf/user for Dconf only). Most of the time it's not necessary or desirable to purge the per-user configuration files anyway.

    If you can't or won't keep your old Dconf database you can use the dconf command to export (“dump”) parts of it into a file and import (“load”) it later. The relevant Dconf directories are
        /org/gnome/desktop/wm/keybindings/ for pre-defined shortcuts and
        /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ for custom, user-defined shortcuts.

    The following example saves the above Dconf directories to two files keybindings.dconf and custom-keybindings.dconf and then restores them from the same files:

    dconf dump '/org/gnome/desktop/wm/keybindings/' > keybindings.dconf
    dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > custom-keybindings.dconf

    dconf load '/org/gnome/desktop/wm/keybindings/' < keybindings.dconf
    dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < custom-keybindings.dconf


