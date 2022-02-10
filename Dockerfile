FROM zephyrprojectrtos/ci:latest
MAINTAINER Adam Augustyn <adam.augustyn@hidglobal.com>

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y --no-install-recommends openjdk-11-jre-headless \
	python3.8-venv \
	clang-format \
	plantuml \
	ruby \
	lcov

RUN wget -q https://github.com/plantuml/plantuml/releases/download/v1.2021.15/plantuml-1.2021.15.jar -O /usr/share/plantuml/plantuml.jar