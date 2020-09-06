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
