DOCKER_IMAGE=chenhengqi/bpf-network-builder

SUDO=$(shell docker info >/dev/null 2>&1 || echo "sudo -E")

build-docker-image:
	$(SUDO) docker build -t $(DOCKER_IMAGE) .

build-bpf-objects:
	$(SUDO) docker run --rm \
		-v $(PWD):/src \
		-w /src \
		$(DOCKER_IMAGE) \
		make -f Build.mk build
