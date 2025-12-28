# Project parameters
LIB_NAME = typr-io
VERSION = v0.1.0
REPO_URL = https://github.com/ZiedYousfi/typr-io/releases/download/$(VERSION)

# Platform detection
OS := $(shell uname -s | tr '[:upper:]' '[:lower:]')
ARCH := $(shell uname -m)

# Mapping OS and ARCH to Go conventionsHello from typr-io-go
ifeq ($(OS),darwin)
    PLATFORM = macos
else
    PLATFORM = linux
endif

ifeq ($(ARCH),x86_64)
    GOARCH = x86_64
else ifeq ($(ARCH),arm64)
    GOARCH = arm64
else ifeq ($(ARCH),aarch64)
    GOARCH = arm64
endif

RELEASE_DIR = $(LIB_NAME)-$(VERSION)-$(PLATFORM)-$(GOARCH)
TARBALL = $(RELEASE_DIR).tar.gz

.PHONY: all install clean

all: install

install:
	@echo "Download of the typr-io release for $(PLATFORM)-$(GOARCH)..."
	@curl -L $(REPO_URL)/$(TARBALL) -o $(TARBALL)

	@echo "Extracting..."
	@mkdir -p $(RELEASE_DIR)
	@tar -xzf $(TARBALL) -C $(RELEASE_DIR)

	@echo "Structuring directories..."
	@mkdir -p include lib

	# Copy headers
	@cp -R $(RELEASE_DIR)/include/* include/

	# Copy libs (handling symbolic links .dylib or .so)
	@cp -R $(RELEASE_DIR)/lib/lib* lib/

	@echo "Cleaning up temporary files..."
	@rm -rf $(RELEASE_DIR)
	@rm $(TARBALL)
	@echo "Done!"

clean:
	@rm -rf include lib
	@echo "Local directories cleaned."