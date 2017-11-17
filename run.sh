NAME=$(mktemp XXXXXX)

function cleanup() {
    docker kill $NAME
    rm $NAME
}

trap cleanup EXIT
echo "Welcome to the Panux demo."
echo "You can install packages with lpkg install"
echo "You can get root access by using su (no password set)"
echo "Some basics are installed in this demo container: bash (entry shell), gcc, python (2 & 3), as well as all of the basic commands"
docker run --name $NAME -it --rm -m 100m panux/demobox
