package pro

//go:generate bpf2go  -cc $BPF_CLANG -cflags $BPF_CFLAGS -target amd64   mytest test.bpf.c   -- -I $BPF_HEADERS
