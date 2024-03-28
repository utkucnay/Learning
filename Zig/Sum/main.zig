const std = @import("std");

pub fn main() void {
    var x: u32 = 2;
    var y: u32 = 4;
    std.debug.print("{d}", x + y);
}
