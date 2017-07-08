NAME=$(mktemp XXXXXX)

function cleanup() {
    docker kill $NAME
    rm $NAME
}

trap cleanup EXIT
echo "Welcome to the Panux demo."
echo "You can install packages with lpkg install"
echo "Don't know what to do? Try lpkg install sl && sl"
docker run --name $NAME -it --rm -m 100m panux/panux:x86_64
