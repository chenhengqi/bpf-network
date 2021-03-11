#include <linux/bpf.h>
#include "bpf_helpers.h"

#define SEC(NAME) __attribute__((section(NAME), used))

SEC("xdp")
int xdp_drop(struct xdp_md *ctx) {
   char msg[] = "xdp_drop get called\n";
   bpf_trace_printk(msg, sizeof(msg));
   return XDP_PASS;
}

char __license[] SEC("license") = "GPL";
