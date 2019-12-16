#! /bin/sh
NAME="istio-$VERSION"
URL="https://github.com/istio/istio/releases/download/${VERSION}/istio-${VERSION}-linux.tar.gz"
echo "Downloading $NAME from $URL ..."
curl -sSL "$URL" | tar xz
BINDIR="$(cd $NAME/bin; pwd)"

\cp -f $BINDIR/istioctl .

