VERSION=0.0.2
RELEASE=0
NAME=cbitter78/os_contribute

COLOR_NORMAL=""
COLOR_RESET="\033[m"
COLOR_BOLD="\033[1m"
COLOR_RED="\033[31m"
COLOR_GREEN="\033[32m"
COLOR_YELLOW="\033[33m"

default: build

build:
	@echo ${COLOR_BOLD}➭${COLOR_RESET} ${COLOR_GREEN}Building Version ${NAME}:${VERSION}-${RELEASE}${COLOR_RESET}
	@docker build --rm -q -t ${NAME}:${VERSION}-${RELEASE} .

run: build
	@echo ${COLOR_BOLD}➭${COLOR_RESET} ${COLOR_GREEN}Running ${NAME}:${VERSION}-${RELEASE}${COLOR_RESET}
	@docker run --rm -ti --env=DOCKER_USER=${USER} -v ${HOME}:/${USER} ${NAME}:${VERSION}-${RELEASE} 

publish: build
	@echo ${COLOR_BOLD}➭${COLOR_RESET} ${COLOR_GREEN}Publishing Version ${NAME}:${VERSION}-${RELEASE}${COLOR_RESET}
	@docker push ${NAME}:${VERSION}-${RELEASE}
