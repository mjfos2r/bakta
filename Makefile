IMAGE_NAME = bakta
VERSION = 1.11.0

TAG1 = mjfos2r/$(IMAGE_NAME):$(VERSION)
TAG2 = mjfos2r/$(IMAGE_NAME):latest

all: | build push

build:
	docker build -t $(TAG1) -t $(TAG2) .

build_no_cache:
	docker build --no-cache -t $(TAG1) -t $(TAG2) .

push:
	docker push $(TAG1)
	docker push $(TAG2)
