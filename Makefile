SERVER = python3 -m http.server
DIR = src
HOSTNAME = $(shell hostname)
INTERFACE = en0
IP = $(shell ifconfig $(INTERFACE) inet | tail -1 | cut -d ' ' -f 2)

server:
	$(SERVER) --directory $(DIR) --bind $(IP)
