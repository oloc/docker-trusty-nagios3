IMAGE   = nagios-server
VERSION = 14.04
RELEASE = 1

REGISTRY = hub.docker.com

build:
	docker build --force-rm --tag=$(REGISTRY)/$(IMAGE):$(VERSION)-$(RELEASE) .

push:
	docker push $(REGISTRY)/$(IMAGE):$(VERSION)-$(RELEASE)

run:
	docker run --rm -p 80:80  --name=$(IMAGE) $(REGISTRY)/$(IMAGE):$(VERSION)-$(RELEASE) 

