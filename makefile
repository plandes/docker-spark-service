VER=		2.1.0
IMG=		plandes/docker-spark-service
DKCMD=		docker

.PHONY:		install
install:	build tag

.PHONY:		build
build:
	$(DKCMD) build -t $(IMG) .

.PHONY: 	tag
tag:
	$(DKCMD) tag $(IMG) $(IMG):$(VER)

.PHONY:		clean
clean:
	$(DKCMD) rmi $(IMG) || true
	$(DKCMD) rmi $(IMG):$(VER) || true

.PHONY:		rebuild
rebuild:	clean build tag

.PHONY:		push
push:
	$(DKCMD) push $(IMG)
