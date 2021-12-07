CC = gcc
CCFLAGS = -Wall

DOCKER = docker

TARGET = galactus
VERSION = latest

.phony: clean docker docker-run

all: $(clean) $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CCFLAGS) -o $(TARGET) $(TARGET).c

clean:
	$(RM) $(TARGET)

docker:
	$(DOCKER) build -t $(TARGET):$(VERSION) .

docker-run:
	$(DOCKER) run $(TARGET):$(VERSION)
