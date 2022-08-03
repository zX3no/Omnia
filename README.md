<h1 align="center">Omnia</h1>

## ⚠️ Work in progress

The code is finished however the writing mostly covers tooling and installation rather than the language itself.

The scope of this project got a little out of hand. It was only meant as a brief overview rather than a comparative analysis of every programming language. 

## Goals

I've heard good and bad things about many languages before, people often pick favourites and get very defensive about them.
Sometimes it feels like the *quality* of a language is determined by how old it is, rather than how good it is.

I'd like to get an overview of the install process, documentation, tooling and syntax of different languages.

I've chosen to build a countdown timer in each language. It's a good choice because it requires:

- Getting input from the user
- Accessing the OS's sleep function
- Formatting a string with zero padding, for example: `1:18` into `01:18`
- Using the math function `floor`

Here's some pseudo code of the timer:

```python
time = 120

while time != 0 
    mins = ⌊time / 60⌋
    secs = time % 60

    print(mins, secs)
    sleep(1 second)
    time = time - 1
```

And remember, I'm comparing the design of each languages not their features, performance or stability.

## Table of contents

- Interpreted
  - [Python](#python)
  - [Javascript](#javascript)
  - [Typescript](#typescript)
- Compiled
  - [C](#c)
  - [C++](#cpp)
  - [V](#v)
  - [Rust](#rust)
  - [Go](#go)
  - [Nim](#nim)
  - [Zig](#zig)
  - [Odin](#odin)
- Bytecode
  - [Java](#java)
  - [Kotlin](#kotlin)
  - [C#](#c-sharp)
  - [Lua](#lua)
- Functional
  - [Gleam](#gleam)
  - [Elixir](#elixir)

## Rankings

There are some important things to note when looking for a new language.
Many new simple langauges lack documentation, tooling and stability, making them good in theory but not in practice.

Build tools like [npm](https://www.npmjs.com/) or [cargo](https://doc.rust-lang.org/cargo/) can make your life much easier. Those of us with experience with Make/CMake/Meson can vouch for this.

Libraries are very important as well, most of us don't have time to reinvent the wheel.
Sometimes a language is worth using for a single package.
Many people use Python just for TensorFlow or PyTorch.

It's also important to keep in mind I only used these languages for a simple project, so I won't pretend to have the whole picture.

#### Most Promising Languages

  - Rust

    Rust has great tooling, documentation, and is easy write. 
  - Nim

    Nim is very young but looks very promising. 
    It tries to make low level programming as simple as python. 
    It's tooling and documentation are good and it's easy to write. 
  - V

    Also a very new language, but with some very respectable goals.
    It has a simple syntax, good tooling, good documentation and is fast to compile.

#### Most Painful Languages

  - Java 
  - Lua
  - Zig

  Recommended alternatives:
  - C# or Kotlin instead of Java
  - Odin instead of Zig
  - Anything instead of Lua

## Overview

TODO: Retime using hyperfine

| Language   | Simplicity | Documentation | Build Tools | Compile Times (ms) | Error Messages |
|------------|------------|---------------|-------------|--------------------|----------------|
| Python     | Good       | Okay          | Okay        | -                  | Okay           |
| JavaScript | Okay       | Okay          | Good        | -                  | Okay           |
| TypeScript | Okay       | Okay          | Good        | -                  | Okay           |
| C          | Okay       | Okay          | Bad         | 800 gcc, 24 tcc    | Bad            |
| C++        | Bad        | Okay          | Bad         | 1359               | Bad            |
| Go         | Bad        | Bad           | Good        | 436                | Okay           |
| Rust       | Okay       | Good          | Good        | 1114               | Good           |
| V          | Good       | Good          | Good        | 430                | Good           |
| Nim        | Good       | Good          | Good        | 898                | Okay           |
| Zig        | Bad        | Bad           | Okay        | 1113               | Bad            |
| Odin       | Bad        | Okay          | Good        | 821                | Okay           |
| Java       | Bad        | Bad           | Bad         | -                  | Okay           |
| Kotlin     | Okay       | Okay          | Bad         | -                  | Bad            |
| Lua        | Okay       | Bad           | Bad         | -                  | Okay           |
| Elixir     | Bad        | Good          |             | -                  | Bad            |
| Gleam      | Okay       | Bad           | Good        | 1891               | Good           |

## Notes

There were a few languages that I attempted to use but gave up on.

- Haskell
  - Confusing to install
  - Bad documentation
  - Error are difficult to understand
  - 3742ms to compile hello world 🤨
- OCaml
  - No windows support
- Elm
  - Built for the web, not console applications

# Interpreted

## Python

- Documentation: 

  https://docs.python.org/3/

- Install Guide:

  https://www.python.org/about/gettingstarted/ 

- Build Command:

  `python timer.py`

### Code

```python
import time
  
t = int(input("Enter the time in seconds: "))

while t:
    mins, secs = divmod(t, 60)
    print('{:02d}:{:02d}'.format(mins, secs), end = "\r")
    time.sleep(1)
    t -= 1
```

### Overview

Python was probably the simplest language to write. 
Since there are so many users finding help is trivial. 
I think this is part of the reason why it's recommended to beginners. 

Many people do not like the indentation system, myself included. 
Since this project is less than 10 lines, obviously I didn't run into any issues, but I have before and it's very annoying!

I found the documentation to be decent. 
It has a search and modules are group together by category. 
I'd like to see some more examples and maybe a front-end facelift, but definitely usable unlike some other languages.

- Simple syntax
- Easy installation
- Decent documentation
- Large amount of learning resources 

## JavaScript

Keep in mind that I'm talking about JavaScript + Node.js.

- Documentation: 

  https://developer.mozilla.org/en-US/docs/Web/JavaScript

  https://nodejs.org/docs/latest-v15.x/api/

- Install Guide:

  https://nodejs.org/en/

- Build Command: 

  `node timer.js`

### Code

```js
const prompt = require('prompt-sync')();
const sleep = ms => new Promise(r => setTimeout(r, ms));

(async () => {
    let t = prompt('Enter the time in seconds: ');
    while (t) {
        var mins = Math.floor(t / 60);
        var secs = t % 60;
        process.stdout.write(String(mins).padStart(2, '0') + ':' + String(secs).padStart(2, '0') + '\r');
        await sleep(1000);
        t--;
    }
})();
```

### Overview

Getting JavaScript running outside of the browser is a little tricky.
JavaScript requires a runtime like Node.js or Deno to be used like other languages. 

I could not figure out how to use Node's `read-line` class and instead used the `prompt-sync` library.
This required some async code which made the project more complicated than I hoped.
It is clear when using JavaScript that it was built for the web.

The documentation feels quite messy. 
There is no separation between tutorials and the api, which makes it hard to find things without google.
The Node.js documentation is missing a search which is painful to use.

- Lot's of resources
- Good tooling
- Good support in most IDE's
- Easy to installation

## TypeScript

- Documentation: 

  https://www.typescriptlang.org/docs/

- Install Guide:

  https://www.typescriptlang.org/download

- Build Command: 

  `yarn dev`

### Code

```ts
import promptSync from 'prompt-sync';
const prompt = promptSync();

(async () => {
    let s = prompt('Enter the time in seconds: ');
    let t = parseInt(s);
    while (t) {
        let mins = Math.floor(t / 60);
        let secs = t % 60;
        process.stdout.write(String(mins).padStart(2, '0') + ':' + String(secs).padStart(2, '0') + '\r');
        await new Promise(f => setTimeout(f, 1000));
        t--;
    }
})();
```

### Overview

TypeScript requires a significant amount of effort to setup. 
I watched [Using TypeScript in Node.js](https://www.youtube.com/watch?v=1UcLoOD1lRM) and that cleared up most of my confusion.

TypeScript requires you to import TypeScript definitions for JavaScript libraries.
Node.js does not work without importing `@types/node`.

I also needed to add `ts-node` to my project and setup a build script. 
Then I can run my project with `yarn dev`.

```json
 "scripts": {
    "dev": "ts-node src/timer.ts"
  },
```

This didn't change the code much when compared to the JavaScript version. 
For a small project, setting up TypeScript doesn't make much sense however, for a large project strong typing is a must have.

The documentation has some of the same problems as JavaScript but is definitely easier to read.

- JavaScript but better

# Compiled

## C

- Documentation: 

  There is no official documentation

- Build Command:

  `gcc timer.c -o timer.exe;timer.exe`

- Install Guide:

  C has no official install guide.

### Code

```c
  #include <stdio.h>
  #include <math.h>
  #include <windows.h>

  int main()
  {
      int t;
      printf("Enter the time in seconds: ");
      scanf("%d", &t);

      while (t)
      {
          int mins = floor(t / 60);
          int secs = t % 60;
          printf("%02d:%02d\r", mins, secs);
          Sleep(1000);
          t--;
      };

      return 0;
  }
```

### Overview

C was easy to write. 

The only thing the standard library was missing was a cross-platform sleep function. 
I had to include `windows.h` and call `Sleep()` instead.

I was a little supprised to find that C has no offical documentation or language reference. 

There is a C section on [cpprefrence.com](https://en.cppreference.com/w/c/language) which is better than nothing.

I've always found the explanations on `cppreference` to be a little obtuse and the examples quite lacklustre.

There is no way to build and run like with other tools. 
However there are some ways to work around this, for example:

```bash
gcc timer.c -o timer.exe

if $env.LAST_EXIT_CODE > 0 {
    ./timer.exe
} else {
  # Failed to compile, do nothing
}
```

## <a name="cpp">C++</a>

- Documentation: 

  There is no official documentation

- Build Command:

  `g++ timer.cpp -o timer.exe; ./timer`

- Install Guide:

  https://isocpp.org/get-started 


### Code

```cpp
  #include <iostream>
  #include <iomanip>
  #include <Windows.h>
  #include <cmath>

  int main()
  {
      int t;
      std::cout << "Enter a time in seconds: ";
      std::cin >> t;

      while (t)
      {
          int mins = floor(t / 60);
          int secs = t % 60;

          std::cout << std::setfill('0') << std::setw(2) << mins;
          std::cout << ":";
          std::cout << std::setfill('0') << std::setw(2) << secs;
          std::cout << "\r";

          Sleep(1000);
          t--;
      }
      return 0;
  }
```

### Overview

This is by far the worst print function I've seen.

```cpp
  std::cout << std::setfill('0') << std::setw(2) << mins;
  std::cout << ":";
  std::cout << std::setfill('0') << std::setw(2) << secs;
```

You might be wondering why I didn't use `std::format`. 

```cpp
  std::cout << std::format("{:02}:{:02}\r", mins, secs);
```

Firstly it's only available with C++20, which would be fine if formatting wasn't missing from `GCC`.
According to the [compiler support page](https://en.cppreference.com/w/cpp/compiler_support) only `Clang` and `MSVC` support it.

This turns out to be incorrect since using the `-std=c++20` flag with clang still gives an error: `no member named 'format' in namespace 'std'`.

Only when using `-std=c++2b` does it compile.

The best part is that Clang compiles 28% slower!

`hyperfine -w 5 'g++ timer.cpp -o timer.exe' 'clang timer_clang.cpp -std=c++2b -o timer_clang.exe'`

```log
Benchmark 1: g++ timer.cpp -o timer.exe
  Time (mean ± σ):      1.639 s ±  0.011 s    [User: 0.001 s, System: 0.005 s]
  Range (min … max):    1.629 s …  1.659 s    10 runs

Benchmark 2: clang timer_clang.cpp -std=c++2b -o timer_clang.exe
  Time (mean ± σ):      2.092 s ±  0.009 s    [User: 0.003 s, System: 0.009 s]
  Range (min … max):    2.080 s …  2.104 s    10 runs

Summary
  'g++ timer.cpp -o timer.exe' ran
    1.28 ± 0.01 times faster than 'clang timer_clang.cpp -std=c++2b -o timer_clang.exe'
```

How is it possible that `printf` is better than `std::cout`. It's been over 20 years and it still sucks, why even write it?

## V 

- Documentation: 

  https://github.com/vlang/v/blob/master/doc/docs.md

  https://modules.vlang.io/

- Build Command:

  `v run .`

- Install Guide:

  V has no official guide.

### Code

```v
  import time
  import os
  import math

  fn main() {
    input := os.input('Enter the time in seconds: ')
    mut t := input.i16()

    for t != 0 {
      mins := math.floor(t / 60)
      secs := t % 60
      print('${mins:02}:${secs:02}\r')
      time.sleep(1 * time.second)
      t--
    }
  }
```

### Overview

V is quite a new language and has some rough edges.

- Documentation is lacking
- Language server is in alpha 
- Lack of resources/learning material
- Compiler panics
- Still under heavy development

Despite this, I really like using V. 

The code is simple and the standard library documentation is very easy to navigate.

Also, the compiler is fast and has simple error messages.

```v
.\timer.v:11:13: error: string types only have the following operators defined: `==`, `!=`, `<`, `>`, `<=`, `>=`, and `+`
    9 |     for t != 0 {
   10 |         mins := math.floor(t / 60)
   11 |         secs := t % 60
      |                   ^
   12 |         print('${mins:02}:${secs:02}\r')
   13 |         time.sleep(1 * time.second)

.\timer.v:14:3: error: operator `-=` not defined on left operand type `string`
   12 |         print('${mins:02}:${secs:02}\r')
   13 |         time.sleep(1 * time.second)
   14 |         t -= 1
      |         ^
   15 |     }
   16 | }
```

## Rust

- Documentation: 

  https://doc.rust-lang.org/book/

  https://doc.rust-lang.org/std/

- Build Command:

  `rustc main.rs -o timer.exe`

- Install Guide:

  https://www.rust-lang.org/learn/get-started

### Code

```rust
use std::{
  io::{stdin, stdout, Write},
  thread,
  time::Duration,
};

fn main() {
    let mut s = String::new();
    eprint!("Please enter the time in seconds: ");
    stdin().read_line(&mut s).unwrap();

    let mut t: i32 = s.trim().parse().unwrap();

    while t != 0 {
        let mins = (t as f32 / 60.0).floor();
        let secs = t % 60;
        print!("{:02}:{:02}\r", mins, secs);
        stdout().flush().unwrap();
        thread::sleep(Duration::from_secs(1));
        t -= 1;
    }
}


```

### Overview

First off, Rust is missing an input function like most other languages. 
Here is the hard way of getting the users input: 

```rust
//get the users input
let mut buf = String::new();
print!("Please enter the time in seconds: ");
stdin().read_line(&mut buf).unwrap();

//remove /r/n and turn the string into an i32
let mut num: i32 = s.trim().parse().unwrap();
println!("You entered the number: {}", num);
```

Not good. 
There is some discussion on the issue but nothing substantial.

- https://github.com/rust-lang/rfcs/pull/3196
- https://github.com/rust-lang/rust/pull/75435

As a demonstration I thought I'd fix the issue myself.
So I created my own crate [read_io](https://crates.io/crates/read_io).

Here's the new input code:

```rust
let mut t: i32 = read!("Enter the time in seconds: ").unwrap();
```

If your interested in the source code you can find it [here](https://github.com/zX3no/read_io/blob/master/src/lib.rs).

Hopefully, something like this can be added to the standard library.

TODO: Talk about cargo and rustc and figure out why rustc is so much faster.

TODO: Talk about the documentation.

## Go

- Documentation: 

  https://pkg.go.dev/std

- Build Command:

  `go run .`

- Install Guide:

  https://go.dev/doc/install

### Code

```go
package main

import (
	"fmt"
	"math"
	"time"
)

func main() {
	var t int
	fmt.Print("Enter a time in seconds: ")
	fmt.Scanf("%d", &t)

	for t != 0 {
		mins := math.Floor(float64(t) / 60.0)
		secs := t % 60
		fmt.Printf("%02v:%02v\r", mins, secs)
		time.Sleep(1 * time.Second)
		t--
	}
}
```

### Overview

Go was quite the mixed bag.
Firstly the toolling had some really nice features. 
Imports of done automatically, I did not type any of those by hand they just appear when I wanted to use a function from a module.
I supprised more languages don't have this because it's one of my favourite features I've found from any language. 

I also liked the syntax for tuples/multiple return values. `foo, bar` is easier to type than Rust's `(foo, bar)`.

Despite some of these nice feautures I can't understand why the would chose such abhorrent function names. `strconv.Atoi()`, how am I supposed to know what that means? How about `string.ToInt()`.

There are multiple print functions that do basically the same thing.
`Printf` and `Print` didn't need to be different.
Maybe it's because Go didn't have generics?

Capitalization feels all over the place,
`float64()` is all lowercase but when a function is inside a package it always starts with a captial? `time.Sleep()`

Go's documentation is lacking a proper search so it can be very difficult to find functions if you don't know what package it should be in.

The error messages were okay at least (maybe a little noisy):

```go
# timer
.\timer.go:21:24: cannot use t / 60 (type int) as type float64 in argument to math.Floor
```

## Nim

- Documentation: 

  https://nim-lang.org/docs/lib.html

  https://nim-lang.org/docs/manual.html

- Build Command:

  `nim c -r timer.nim`

- Install Guide:

  https://nim-lang.org/install_windows.html

### Code

```nim
import std/math, strutils, strformat
import os

write(stdout, "Enter the time in seconds: ")

var s = readLine(stdin)
var t = parseInt(s)

while t != 0:
    var mins = math.floor(t / 60)
    var secs = t mod 60

    var str = &"{mins:02}:{secs:02}\r"
    write(stdout, str)

    os.sleep(1000)
    t -= 1
```

### Overview

Installation was fairly simple, although the install instructions make it seem more complicated. 

Documentation is decent and I didn't have much difficulty finding what I needed.

Nim has many different ways of doing things, to me this was pretty overwelming.

```nim
Keywords: 
addr and as asm
bind block break
case cast concept const continue converter
defer discard distinct div do
elif else end enum except export
finally for from func
if import in include interface is isnot iterator
let
macro method mixin mod
nil not notin
object of or out
proc ptr
raise ref return
shl shr static
template try tuple type
using
var
when while
xor
yield

Operators:
=     +     -     *     /     <     >
@     $     ~     &     %     |
!     ?     ^     .     :     \
and or not xor shl shr div mod in notin is isnot of as from

Tokens:
`   (    )     {    }     [    ]    ,  ;   [.    .]  {.   .}  (.  .)  [:

Experimental Unicode Operators:
∙ ∘ × ★ ⊗ ⊘ ⊙ ⊛ ⊠ ⊡ ∩ ∧ ⊓
± ⊕ ⊖ ⊞ ⊟ ∪ ∨ ⊔
```

Keep in mind not all are used, some are just reserved.

From creator of V:

> V and Nim are very different. One of V's main philosophies is "there must be only one way of doing things". 
>
> Nim gives a lot of options and freedom to developers. For example, in V you would write foo.bar_baz(), but in Nim all of these are valid: foo.barBaz(), foo.bar_baz(), bar_baz(foo), barBaz(foo), barbaz(foo) etc.

The tooling was surprisingly seemless given how new the language is.
The vscode extension worked well out of box, which isn't true for other languages like V, Odin and Zig.

## Zig

- Documentation: 

  https://ziglang.org/documentation/master/

  https://ziglang.org/documentation/master/std/

- Build Command:

  `zig build run`

- Install Guide:

  https://ziglang.org/learn/getting-started/

### Code

```zig
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
```

### Overview

Hello world in Zig:

```zig
const std = @import("std");

pub fn main() !void {
    try std.io.getStdOut().writer().print("Hello, world!\n", .{});
}
```

Error messages are bad, documentation is bad. 
This language feels like it was written by someone who wanted to make C even harder to use.

Builds in release mode by default and I have no idea how to change it. 

```zig
C:\path\zig\lib\std\fmt.zig:82:9: error: Expected tuple or struct argument, found std.fmt.ParseIntError!i64
        @compileError("Expected tuple or struct argument, found " ++ @typeName(ArgsType));
        ^
.\timer.zig:4:29: note: called from here
pub fn main() anyerror!void {
                            ^
C:\path\zig\lib\std\io\writer.zig:28:34: note: error set '@typeInfo(@typeInfo(@TypeOf(std.fmt.format)).Fn.return_type.?).ErrorUnion.error_set' cannot cast into error set 'std.os.WriteError'
            return std.fmt.format(self, format, args);
                                 ^
```

```
C:\Path\zig\lib\std\fmt.zig:84:9: error: Expected tuple or struct argument, found []const u8
        @compileError("Expected tuple or struct argument, found " ++ @typeName(ArgsType));
        ^
C:\Path\zig\lib\std\io\writer.zig:28:34: note: called from here
            return std.fmt.format(self, format, args);
                                 ^
C:\Path\zig\lib\std\debug.zig:93:27: note: called from here
    nosuspend stderr.print(fmt, args) catch return;
                          ^
.\timer.zig:17:10: note: called from here
    print("{}", line);
         ^
.\timer.zig:8:21: note: called from here
pub fn main() !void {
                    ^
C:\Path\zig\lib\std\io\writer.zig:28:34: error: expected type 'std.os.WriteError!void', found '@typeInfo(@typeInfo(@TypeOf(std.fmt.format)).Fn.return_type.?).ErrorUnion.error_set!void'
            return std.fmt.format(self, format, args);
                                 ^
C:\Path\zig\lib\std\debug.zig:93:27: note: called from here
    nosuspend stderr.print(fmt, args) catch return;
                          ^
.\timer.zig:17:10: note: called from here
    print("{}", line);
         ^
.\timer.zig:8:21: note: called from here
pub fn main() !void {
                    ^
C:\Path\zig\lib\std\io\writer.zig:28:34: note: error set '@typeInfo(@typeInfo(@TypeOf(std.fmt.format)).Fn.return_type.?).ErrorUnion.error_set' cannot cast into error set 'std.os.WriteError'     
            return std.fmt.format(self, format, args);
                                 ^
```

## Odin

- Documentation: 

  https://pkg.odin-lang.org/core/

- Build Command:

  `odin run .`

- Install Guide:

  https://odin-lang.org/docs/install/
  This guide is bad and does not provide enough instructions.

### Code

```odin
package main

import "core:fmt"
import "core:time"
import "core:os"
import "core:bufio"
import "core:io"
import "core:strings"
import "core:math"
import "core:strconv"

main :: proc() {
	s := os.stream_from_handle(os.stdin)
	r: bufio.Reader
	bufio.reader_init(&r, io.Reader{s})

	fmt.printf("Enter the time in seconds: ")
	line, err := bufio.reader_read_string(&r, '\n')
	assert(err == .None)
	input := strings.trim_space(line)

	t := strconv.atoi(input)

	for t != 0 {
		mins := i32(math.floor(f32(t) / 60))
		secs := t % 60
		fmt.printf("%02d:%02d\r", mins, secs)
		time.sleep(1 * time.Second)
		t -= 1
	}
}
```

### Overview

TODO: rewrite

Documentation does not have a functional search and the source code is hard to read. 
Even with LSP I cannot find a way to convert a string to an int.

# Bytecode

## Java

- Documentation: 

  https://docs.oracle.com/javase/8/docs/api/overview-summary.html

- Build Command:

  `javac timer.java;java Timer`

- Install Guide:

  > This is better than the official website

  https://adoptopenjdk.net/

### Code

```java
import java.io.Console;

public class Timer {
  public static void main(String[] args) {
    System.out.format("Enter a time in seconds: ");
    Console console = System.console();
    int t = Integer.parseInt(console.readLine());

    while (t != 0) {
        double mins = Math.floor(t / 60.0);
        int secs = t % 60;
        System.out.format("%02d:%02d\r", (int)mins, secs);
        try
        {
            Thread.sleep(1000);
        }
        catch(InterruptedException ex)
        {
            Thread.currentThread().interrupt();
        }
        t -= 1;
    }
  }
}
```

### Overview

Errors are pretty decent: 

```log
timer.java:8: error: incompatible types: int cannot be converted to boolean
    while (t) {
           ^
timer.java:9: error: incompatible types: possible lossy conversion from double to int
        int mins = Math.floor(t / 60);
                             ^
2 errors
Exception in thread "main" java.lang.NumberFormatException: Cannot parse null string
```

Java is hard to install, hard to write, hard to compile, documentation is awful.

This language is not relevant to modern programming.

## Kotlin

- Documentation: 

  https://kotlinlang.org/api/latest/jvm/stdlib/

- Build Command:

  `kotlinc timer.kt -include-runtime -d timer.jar;java -jar timer.jar`

- Install Guide:

  https://kotlinlang.org/docs/getting-started.html

  https://kotlinlang.org/docs/command-line.html

### Code

```kotlin
import java.util.Scanner

fun main() {
    print("Enter a time in seconds: ")
    val read = Scanner(System.`in`)
    var t = read.nextInt()

    while (t != 0) {
        var mins = Math.floor(t / 60.0).toInt()
        var secs = (t % 60.0).toInt()

        print(java.lang.String.format("%02d:%02d\r", mins, secs))
        Thread.sleep(1000)
        t -= 1
    }
}
```

### Overview

Kotlin is meant to be used with IntelliJ IDEA. I don't like IDEA so I followed the command line tutorial instead.

I measured `5.01` seconds to compile and run hello world. 
I think this has something to do with using `kotlinc` instead of a proper build tool (IDEA, Gradle, Maven). 


I kept encountering overload ambiguity errors, which don't clarify anything. 

```log
  timer.kt:9:22: error: overload resolution ambiguity: 
  public final operator fun rem(other: Byte): Double defined in kotlin.Double
  public final operator fun rem(other: Byte): Int defined in kotlin.Int
  public final operator fun rem(other: Int): Double defined in kotlin.Double
  public final operator fun rem(other: Int): Int defined in kotlin.Int
  public final operator fun rem(other: Long): Double defined in kotlin.Double
  public final operator fun rem(other: Long): Long defined in kotlin.Int
  public final operator fun rem(other: Short): Double defined in kotlin.Double
  public final operator fun rem(other: Short): Int defined in kotlin.Int
  var secs = t.rem(60);
```

## <a name="c-sharp">C#</a>


- Documentation: 

  https://docs.microsoft.com/en-us/dotnet/csharp/

- Build Command:

  `dotnet run`

- Install Guide:

  https://dotnet.microsoft.com/en-us/learn/dotnet/hello-world-tutorial/install


### Code

```c#
Console.Write("Enter the time in seconds: ");
string? s = Console.ReadLine();

if (s is null)
    return;

int t = int.Parse(s);

while (t != 0)
{
    double mins = Math.Floor((double)t / 60);
    int secs = t % 60;
    String time = String.Format("{0:D2}:{1:D2}\r", (int)mins, secs);
    Console.Write(time);

    Thread.Sleep(1000);
    t -= 1;
}
Console.WriteLine(t);
```

### Overview

Creating a new project with `dotnet new console --framework net6.0`

Running with `dotnet run`

Error messages are not easy to read:

```c#
Unhandled exception. System.FormatException: Format specifier was invalid.
   at System.Number.GetFloatingPointMaxDigitsAndPrecision(Char fmt, Int32& precision, NumberFormatInfo info, Boolean& isSignificantDigits)
   at System.Number.FormatDouble(ValueStringBuilder& sb, Double value, ReadOnlySpan`1 format, NumberFormatInfo info)
   at System.Number.TryFormatDouble(Double value, ReadOnlySpan`1 format, NumberFormatInfo info, Span`1 destination, Int32& charsWritten)
   at System.Double.TryFormat(Span`1 destination, Int32& charsWritten, ReadOnlySpan`1 format, IFormatProvider provider)
   at System.Text.ValueStringBuilder.AppendFormatHelper(IFormatProvider provider, String format, ParamsArray args)
   at System.String.FormatHelper(IFormatProvider provider, String format, ParamsArray args)
   at System.String.Format(String format, Object arg0, Object arg1)
   at Program.<Main>$(String[] args) in Program.cs:line 9
```

The documentation and build tools are okay.

Clean syntax.

Options are difficult to use.


## Lua

- Documentation: 

  https://www.lua.org/manual/5.4/

- Build Command:

  `lua timer.lua`

- Install Guide:

  There is no install guide

### Code

```lua
function sleep(n)
  if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

io.write("Enter the time in seconds: ")
t = io.read("*n")

while t > 0 do 
    mins = math.floor(t / 60)
    secs = t % 60
    output = string.format("%02d:%02d\r", mins, secs)
    io.write(output)
    sleep(1)
    t = t - 1
end
```

### Overview

TODO: rewrite

I wanted to use luasocket for my sleep function, since Lua does not have one included.
After running `luarocks install luasocket` I receive this nice error:

```lua
Installing https://luarocks.org/luasocket-3.0rc1-2.src.rock

luasocket 3.0rc1-2 depends on lua >= 5.1 (5.4-1 provided by VM)
mingw32-gcc -O2 -c -o src/luasocket.o -IC:/Users/Bay/scoop/apps/lua/current/include src/luasocket.c -DLUA_COMPAT_APIINTCASTS -DLUASOCKET_DEBUG -DLUASOCKET_INET_PTON -DWINVER=0x0501 -DLUASOCKET_API=__declspec(dllexport) -DMIME_API=__declspec(dllexport) -Ic:/windows/system32/include
'mingw32-gcc' is not recognized as an internal or external command,
operable program or batch file.

Error: Build error: Failed compiling object src/luasocket.o
```

After fixing that I receive a new error:

```
Installing https://luarocks.org/luasocket-3.0rc1-2.src.rock

Error: Failed finding Lua header files. You may need to install them or configure LUA_INCDIR.
```

I decide to use something I found on stack overflow instead:

```lua
function sleep(n)
  if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end
```

The documentation is horrible, the syntax is somehow worse the python.
This language took me the longest to write, don't use it.

# Functional

## Gleam

- Documentation: 

  https://gleam.run/documentation/
  https://hexdocs.pm/gleam_stdlib/

- Build Command:

  `gleam run`

- Install Guide:

  https://gleam.run/getting-started/installing/

### Code

```rust
import gleam/io
import gleam/erlang
import gleam/int
import gleam/string
import gleam/float

fn loop(i: Int) {
  case i {
    0 -> io.print("Done.")
    _ -> {
      let f = int.to_float(i) /. 60.0
      let m = float.floor(f)
      let mins = float.round(m)
      let secs = i % 60

      io.print(
        int.to_string(mins)
        |> string.append(":")
        |> string.append(int.to_string(secs))
        |> string.append("  \r"),
      )

      erlang.sleep(1000)
      loop(i - 1)
    }
  }
}

pub fn main() {
  assert Ok(input) = erlang.get_line("Enter a time in seconds: ")
  assert Ok(t) =  string.trim(input) |> int.parse()

  loop(t)
}
```

### Overview

>  My code does not work anymore, I've tried old versions of gleam but I still get the same issues. 

Gleam is not easy to install.

Unlike most languages where you *just* install them, gleam requires you to install:

- Chocolatey
- Gleam
- Erlang
- Rebar3

This is not very user friendly especially for a language that is predicated on it's ease of use.

> "Gleam is a friendly language for building type-safe, scalable systems! ✨"

Gleam is also missing a few things in it's standard library such as: 

- Reading the users input
- Sleeping a thread

However these can be added by using `gleam_erlang`

```toml
# gleam.toml

[dependencies]
gleam_stdlib = "~> 0.21"
gleam_erlang = "~> 0.9"
```

Gleam is also missing string formatting, so there is no zero-padding. 

Using the pipe operator makes things a little easier but still quite difficult.

```rust
 io.print(
        int.to_string(mins)
        |> string.append(":")
        |> string.append(int.to_string(secs))
        |> string.append("  \r"),
      )
```

## Elixir

- Documentation: 

  https://elixir-lang.org/docs.html
  https://hexdocs.pm/elixir/Kernel.html

- Build Command:

  `elixir timer.exs`

- Install Guide:

  https://elixir-lang.org/install.html

### Code

```elixir
defmodule Timer do
  def run(t) do
    mins = Integer.floor_div(t, 60)
    |> Integer.to_string
    |> String.pad_leading(2, "0")

    secs = rem(t, 60) 
    |> Integer.to_string
    |> String.pad_leading(2, "0")

    IO.write("#{mins}:#{secs}\r")

    Process.sleep(1000)

    if t != 0, do: run(t - 1)
  end
end

{t, _} = IO.gets("Enter a time in seconds: ") |> String.trim() |> Integer.parse()

Timer.run(t)
```

### Overview

Elixir is the only functional langauge which worked seamlessly.

The installer just works, the documentation *exists* and the code wasn't too difficult to write.

I don't know why languages use `do` and `end` keywords over brackets. I've always found it to be harder to write and to read. 

Error messages are difficult to read. They include some seemingly useless information.

```log
** (ArgumentError) cannot invoke def/2 outside module
    (elixir 1.13.3) lib/kernel.ex:6111: Kernel.assert_module_scope/3
    (elixir 1.13.3) lib/kernel.ex:4839: Kernel.define/4
    (elixir 1.13.3) expanding macro: Kernel.def/2
    timer.exs:4: (file)

** (Protocol.UndefinedError) protocol String.Chars not implemented for {10, ""} of type Tuple
    (elixir 1.13.3) lib/string/chars.ex:3: String.Chars.impl_for!/1
    (elixir 1.13.3) lib/string/chars.ex:22: String.Chars.to_string/1
    (elixir 1.13.3) lib/io.ex:724: IO.puts/2
```

Despite all of my problems with Elixir, this is probably my favourite functional language.
Although the bar is exceptionally low.
