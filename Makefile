
prepare:
	sudo apt-get -qq -y install curl

build:
	docker build -t vz-languagetool-3-8 .

run:
	docker run -d --name languagetool -p 8010:8010 vz-languagetool-3-8

stop:
	docker stop languagetool
	docker rm languagetool

