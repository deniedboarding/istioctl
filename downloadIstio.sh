#! /bin/sh
OS="$(uname)"
OSEXT="linux"

NAME="istio-$VERSION"
URL="https://github.com/istio/istio/releases/download/${VERSION}/istio-${VERSION}-${OSEXT}.tar.gz"
echo "Downloading $NAME from $URL ..."
curl -L "$URL" | tar xz
# TODO: change this so the version is in the tgz/directory name (users trying multiple versions)
echo "Downloaded into $NAME:"
BINDIR="$(cd $NAME/bin; pwd)"

\cp -f $BINDIR/istioctl .

