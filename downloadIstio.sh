#! /bin/sh
OS="$(uname)"
OSEXT="linux"

NAME="istio-$ISTIO_VERSION"

ls $NAME > /dev/null 2>&1
# if istio data is not download yet
if [ $? != 0 ]; then
  URL="https://github.com/istio/istio/releases/download/${ISTIO_VERSION}/istio-${ISTIO_VERSION}-${OSEXT}.tar.gz"
  echo "Downloading $NAME from $URL ..."
  curl -L "$URL" | tar xz
  # TODO: change this so the version is in the tgz/directory name (users trying multiple versions)
  echo "Downloaded into $NAME:"
  BINDIR="$(cd $NAME/bin; pwd)"

  \cp -f $BINDIR/istioctl .
fi
