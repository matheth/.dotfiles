# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_";
}

# make pdf from latex and open it
function latex() {
    local objname="${1%.*}"
    local srcname="$objname.pdf"
    pdflatex "${1}"
    pdflatex "${1}"
    open "$srcname"
}

# add a file and commit with a message
function gacm(){
    git add "$1"
    git commit -m "$2"
}

# add a file, commit with a message, and push
function gacmp(){
	gacm "$1" "$2"
    git push
}

# add a file, commit with a message, and push
function gcmp(){
	gcm "$1" 
    git push
}
# change desktop background image
function set-background-desktop(){
    # to use add an image to below path and call
    # set-background-desktop [name-of-image]
    var="file:///home/matheth/Pictures/desktop-wallpapers/$1"
    echo $var
    gsettings set org.gnome.desktop.background picture-uri "$var"
}

# change lockscreen background image
function set-background-lockscreen(){
    # to use add an image to below path and call
    # set-background-lockscreen [name-of-image]
    var="file:///home/matheth/Pictures/desktop-wallpapers/$1"
    echo $var
    gsettings set org.gnome.desktop.screensaver picture-uri "$var"
}
