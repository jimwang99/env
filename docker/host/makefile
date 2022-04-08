REPO=base
NAME=dev

default: shell

build:
	docker build -t phdbreak99/$(REPO) -f $(REPO)/Dockerfile .

run:
	docker run -dit \
		--name $(NAME) \
		-v ~/env:/root/env \
		--cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
		phdbreak99/$(REPO)

shell:
	docker exec -it $(NAME) /usr/bin/zsh
