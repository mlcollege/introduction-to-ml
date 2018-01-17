NAME=mlcollege/introduction-to-ml

all: pull build run

run:
	docker run -ti --rm -p 9999:8888 -v $(shell pwd)/src:/src $(NAME)

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)

pull:
	docker pull $(NAME)
