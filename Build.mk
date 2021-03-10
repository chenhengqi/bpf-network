BPF_HELPERS_URL=https://raw.githubusercontent.com/torvalds/linux/v5.4/tools/testing/selftests/bpf/bpf_helpers.h
BPF_HELPERS=bpf_helpers.h

build: download
	clang -Wall -target bpf -I. -c network/drop.c -o network/drop.o

download:
	if [ ! -f $(BPF_HELPERS) ]; then curl $(BPF_HELPERS_URL) --output $(BPF_HELPERS); fi
