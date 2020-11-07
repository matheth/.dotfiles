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
    git add "$1"
    git commit -m "$2"
    git push
}

# compile R
function Rcomp(){
    cat "$1" | R --no-save -q | less
}

# load a problem file and write sol to second argument
function runscip(){
    command="read $1 optimize write solution $2 q"
    scip -q -c "$command"
    cat "$2" | grep objective
}

