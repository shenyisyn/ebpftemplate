CLANG ?= clang-13
CFLAGS ?= -O2 -g -Wall -Werror -Wno-unused-function -Wno-unused-variable -Wno-uninitialized -Wno-unused-but-set-variable

EBPF_ROOT = /root/ebpftest/cebpf
MY_HEADERS = $(EBPF_ROOT)/headers

all: generate

generate: export BPF_CLANG=$(CLANG)
generate: export BPF_CFLAGS=$(CFLAGS)
generate: export BPF_HEADERS=$(MY_HEADERS)
generate:
	go generate ./...