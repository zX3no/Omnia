const std = @import("std");
const print = std.debug.print;
const fmt = std.fmt;
const math = std.math;
const os = std.os;
const time = std.time;

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    var buf: [20]u8 = undefined;

    print("Enter a time in seconds: ", .{});

    const amt = try stdin.read(&buf);
    const line = std.mem.trimRight(u8, buf[0..amt], "\r\n");
    var t = fmt.parseUnsigned(u8, line, 10) catch {
        print("Invalid number.\n", .{});
        return;
    };

    while (t != 0) {
        var f = @intToFloat(f32, t);
        const mins = @floatToInt(i32, math.floor(f / 60.0));
        const secs = t % 60;
        os.windows.kernel32.Sleep(1000);
        print("{any}:{any} \r", .{ mins, secs });
        t -= 1;
    }
}
