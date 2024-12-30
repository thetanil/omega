const std = @import("std");

extern fn print(i32) void;

export fn add(a: i32, b: i32) void {
    print(a + b);
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit();
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
