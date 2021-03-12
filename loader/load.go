package loader

//go:generate go run github.com/cilium/ebpf/cmd/bpf2go -cc clang-11 network_drop ../network/drop.c
