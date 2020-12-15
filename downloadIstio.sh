#! /bin/sh
NAME="istio-$VERSION"
URL="https://storage.googleapis.com/istio-release/releases/$VERSION/istioctl-$VERSION-linux-amd64.tar.gz"
echo "Downloading $NAME from $URL ..."
curl -sSL "$URL" | tar xz
