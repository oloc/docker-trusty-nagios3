IMAGE   = trusty-nagios3
VERSION = 14.04
RELEASE = 1

REGISTRY = hub.docker.com

default: build

build:
	docker build --force-rm --tag=$(REGISTRY)/$(IMAGE):$(VERSION)-$(RELEASE) .

push:
	docker push $(REGISTRY)/$(IMAGE):$(VERSION)-$(RELEASE)

run:
	docker run --rm --name=$(IMAGE) $(REGISTRY)/$(IMAGE):$(VERSION)-$(RELEASE)

