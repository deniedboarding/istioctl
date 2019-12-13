APP_NAME=istioctl
APP_VERSION=1.4.2
export ISTIO_VERSION=$(APP_VERSION)

all: build

build:
	sh downloadIstio.sh
	docker build -t $(APP_NAME):$(APP_VERSION) --build-arg http_proxy="$(http_proxy)" --build-arg https_proxy="$(https_proxy)" .
