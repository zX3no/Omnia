const std = @import("std");
const print = std.debug.print;
const fmt = std.fmt;
const math = std.math;
const os = std.os;
const time = std.time;

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    var buf: [8]u8 = undefined;

    print("Enter a time in seconds: ", .{});

    const amt = try stdin.read(&buf);
    const line = std.mem.trimRight(u8, buf[0..amt], "\r\n");

    var t = fmt.parseUnsigned(u64, line, 10) catch {
        return print("Invalid number.\n", .{});
    };

    while (t != 0) {
        var f = @intToFloat(f32, t);
        const mins = @floatToInt(u32, math.floor(f / 60.0));
        const secs = t % 60;
        print("{any:0>2}:{any:0>2}\r", .{ mins, secs });
        os.windows.kernel32.Sleep(1000);
        t -= 1;
    }
}
