//go:build ignore
#include <vmlinux.h>
#include <bpf_helpers.h>
#include <bpf_tracing.h>
#include <bpf_endian.h>
// TODO 本课程来自 程序员在囧途(www.jtthink.com) 咨询群：98514334
SEC("xdp")
int mytest(struct xdp_md* ctx) {
   return 0;
}