# https://ziglang.org/learn/getting-started/
ZIGURL:="https://ziglang.org/builds/zig-linux-x86_64-0.14.0-dev.2577+271452d22.tar.xz"

$(HOME)/.zig/:
	@mkdir -p $(HOME)/.zig
	@curl -L $(ZIGURL) | tar -xJ -C $(HOME)/.zig --strip-components=1
	@echo "Include in path with 'export PATH=\$$PATH:$(HOME)/.zig'"

all: $(HOME)/.zig/
	@echo "Building Zig"
	@zig build
