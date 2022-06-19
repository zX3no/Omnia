<h1 align="center">Omnia</h1>

## ⚠️ Work in progress

The code is finished however the writing mostly covers tooling and installation rather than the language itself.

The scope of this project got a little out. It was only meant as a brief overview rather than a comparative analysis of every programming language. 

## Goals

I've heard good and bad things about many languages before, people often pick favorites and get very defensive about them.
Sometimes it feels like the *quality* of a language is determined by how old it is, rather than how good it is.

To get to the bottom of this, I've decided to remake the same project in 17 languages.

The project I've chosen is a countdown timer. It's a good choice because it requires:

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
    time -= 1
```

## Table of contents

- Interpreted
  - [Python](#python)
  - [Javascript](#javascript)
  - [Typescript](#typescript)
- Compiled
  - [C   ](#c)
  - [C++ ](#cpp)
  - [V   ](#v)
  - [Rust](#rust)
  - [Zig ](#zig)
  - [Go  ](#go)
  - [Nim ](#nim)
  - [Odin](#odin)
- Bytecode
  - [Java    ](#java)
  - [Kotlin  ](#kotlin)
  - [C#      ](#c-sharp)
  - [Lua     ](#lua)
- Functional
  - [Gleam](#gleam)
  - [Elixir](#elixir)

## Rankings

There are some important things to note when looking for a new language.
The best language is one that is easiest to learn.
Many new `simple` languages lack documentation and are not a good choice for beginners.

Tooling is also very important, having a nice build tool like [npm](https://www.npmjs.com/) or [cargo](https://doc.rust-lang.org/cargo/) can make programming easier.

Libraries are very important as well, most of us don't have time to reinvent the wheel.
Sometimes a language is worth using for a single package.
Many people use Python just for TensorFlow or PyTorch.

It's also important to keep in mind I only used these languages for simple projects so I won't pretend to whole picture.

I generally don't like dynamic, bytecode or functional languages because of performance issues or cognitive overhead. 
I'll try to argue for this, throughout the document. 

### The best & worst languages

- Best languages for beginner programmers
  - Choose whatever you want it doesn't matter

- Best languages for experienced programmers
  - V
  - Rust
  - Nim

  V is a language I hope to move into the beginner category. 
  It's simple, preformat and modern. 
  It's lacking a few features, documentation and you'll often get compiler panics.

  Hopefully some of these issues will be resolved by version 1.0.

  Rust has great tooling, documentation, a [borrow checker](https://doc.rust-lang.org/book/ch04-02-references-and-borrowing.html) and is easy write. 

  Nim is very young but looks very promising. It tries to make low level programming as simple as python. It's tooling and documentation are decent and it's pretty easy to write. 

- Best bytecode languages
  - C#
  - Kotlin

  I don't like bytecode languages but if you can't help yourself, C# and Kotlin are decent choices.

- Best functional languages
  - Elixir
  - Gleam

  These were the ones that I managed to get working, I think that speaks to their usability. 

- Languages you should never use
  - Java
  - Lua
  - Zig

  These languages all have better alternatives.
  - Kotlin is better than Java
  - Anything is better than Lua
  - Odin is better than Zig

| Language   | Simplicity | Documentation | Build Tools | Compile Times (ms) | Error Messages |
|------------|------------|---------------|-------------|--------------------|----------------|
| Python     | Good       | Okay          | Okay        | -                  | Okay           |
| JavaScript | Bad        | Okay          | Good        | -                  | Okay           |
| TypeScript | Bad        | Okay          | Good        | -                  | Okay           |
| C          | Okay       | Okay          | Bad         | 800                | Bad            |
| C++        | Bad        | Okay          | Bad         | 1359               | Bad            |
| Go         | Bad        | Bad           | Good        | 436                | Okay           |
| Rust       | Okay       | Great         | Great       | 1114               | Great          |
| V          | Great      | Good          | Good        | 430                | Good           |
| Nim        | Good       | Good          | Good        | 965                | Okay           |
| Zig        | 0____0     | Bad           | Okay        | 5297               | Bad            |
| Odin       | Bad        | Okay          | Good        | 821                | Okay           |
| Java       | Bad        | Bad           | Bad         | -                  | Okay           |
| Kotlin     | Okay       | Okay          | Bad         | -                  | Bad            |
| Lua        |            | Bad           | Bad         | -                  | Okay           |
| Elixir     | Bad        | Good          |             | -                  |                |
| Haskell    | 0____0     | Bad           | Bad         | 3738               | Bad            |
| Gleam      | Okay       | Bad           | Great       | 1891               | Great          |

#### Something I like about each language:

Python: Very clean input function. Only language that has a `divmod` function. Standard library seems very strong and comprehensive.

JavaScript: Despite being built for the web. It's was still very easy to setup dependencies and find documentation.

TypeScript: It's JavaScript with compile time type checking, what's not to love?

C: Standard library is very simple to use. Doesn't require any crazy steps to setup and use.

C++: It has scoped variables(RAII) and pretty much every feature you could ask for in a modern programming language (and more). 

Go: I really like the tooling, imports are managed automatically which saves me a lot of time.

Rust: Cargo is the best build tool I've ever used.
The language also has excellent documentation.

V: It's simple to write, fast to compile.

Nim: Very simple to write, feels like a cross between rust and python.

Zig: This language is awful

Odin: This language is also awful

Java: This language is also awful

Kotlin: Simple to write and a great choice to write android apps with.

Lua: This language made me angry.

C#: It's better than Java.

Elixir: One of the few functional languages that worked for me.
Opened my mind to different ways of problem solving.

Gleam: Great error messages and tooling.
I won't pretend to understand functional languages however this felt the most beginner friendly. 

## Notes

> There were a few languages that I attempted to use but gave up with

- Haskell
  - Confusing to install
  -  Bad documentation
  -  Error are difficult to understand
  -  Compiler is around 1 GB
  -  3742ms to compile hello world 🤨
- OCaml
  - No windows support

# Interpreted

## Python

- Documentation: 

  https://docs.python.org/3/

- Install Guide:

  https://www.python.org/ > 
  https://www.python.org/about/gettingstarted/ >
  https://wiki.python.org/moin/BeginnersGuide/Download >
  https://www.python.org/downloads/ 

  Adding to path requires ticking a checkbox

  Cannot be installed by following instructions;.

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

Python is simple as long as you don't require any dependencies.
I find the syntax to be difficult at scale but fine for small projects.
I would also caution people in using interpreted languages as they are inherently slow.

## JavaScript

Keep in mind that I'm talking about JavaScript + Node.js.

- Documentation: 

  https://developer.mozilla.org/en-US/docs/Web/JavaScript

  https://nodejs.org/docs/latest-v15.x/api/

  https://nodejs.dev/learn/introduction-to-nodejs

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

TODO: rewrite

It may be hard for people to understand that JavaScript requires a runtime like NodeJs or Deno. It's hard to recommend to new programmers given how complicated the tech stack is.

Node's `read-line` class is not easy to use, I used the library `prompt-sync` instead. 

I'm not a fan of the async code required, it's clear that JavaScript was built for the web.

Please use it for the web, not for desktop applications.

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

TypeScript requires quite a significant amount of effort to setup. 
It is difficult to find information about how it's used with Node.js.
I watched [Using TypeScript in Node.js](https://www.youtube.com/watch?v=1UcLoOD1lRM) and that cleared up most of my confusing.

TypeScript requires you to import TypeScript definitions for JavaScript libraries.
Node.js does not work without importing `@types/node`.

I needed to add `ts-node` to my project and setup a build script. 
Then I can run my project with `yarn dev`.

```json
 "scripts": {
    "dev": "ts-node src/timer.ts"
  },
```

I've always preferred statically typed languages. 
If your a web developer you'll probably like this more than JavaScript.

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

Fairly simple to write. 
At first I didn't like `scanf`, but it turned out to be better than 90% of languages I tried.
Unfortunately C lacks an easy cross-platform sleep function.
Sometimes C would compile even though my IDE was telling me there should be an error.
It feels very difficult to find bugs in C code.

An annoying habit seems to start here with C. 
I would like to build and run my program in one command, for example: `gcc timer.c --run`.
Instead I will build and run with the following: `gcc timer.c -o timer.exe;timer.exe`.
See the issue? If my program fails to compile I will still run the program. 

I have looked for a solution but with no success.

My project is so simple that it does not highlight any of C's issues. It feels unfair to talk about them without examples. 
All I'll say is, C has not changed for a long time, there are *new* and *different* approaches to solving programming problems.
Give them a go and you might be surprised.

## <a name="cpp">C++</a>

- Documentation: 

  https://en.cppreference.com/w/

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

Firstly it's only available with C++20. 
Which would be fine if formatting wasn't missing from `GCC`.
According to the [compiler support page](https://en.cppreference.com/w/cpp/compiler_support) only `Clang` and `MSVC` support it.

This turns out to be incorrect since using the `-std=c++20` flag with clang still gives an error: `no member named 'format' in namespace 'std'`.

Only when using `-std=c++2b` does it compile.

The best part is that Clang compiles 28% slower!

`hyperfine -w 5 'g++ timer.cpp -o timer.exe' 'clang timer_clang.cpp -std=c++2b -o timer_clang.exe'`

```
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

In fairness, C++ has some great features that C doesn't have: RAII, vectors, smart pointers, better multi-threading and error handling.
You can even keep using `printf` and all your favourite C libraries in C++... or you could just learn Rust.

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
- Still under heavy development

Despite this I really like writing code with V. 
The code is simple, the compiler is fast and has great messages. 
Standard library documentation is very easy to navigate.

I have high hopes for this language.

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

  `cargo run`

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
let mut s = String::new();
print!("Please enter the time in seconds: ");
stdin().read_line(&mut s).unwrap();

//remove /r/n and turn the string into an i32
let mut t: i32 = s.trim().parse().unwrap();
println!("You entered the number: {}", t);
```

Not great. However there is some discussion about this issue. Unfortunately nothing very substantial.

https://github.com/rust-lang/rfcs/pull/3196
https://github.com/rust-lang/rust/pull/75435

It doesn't seem like there is much agreement about this topic and it's disappointing that it's been left out.

To fix this, I created my own crate called [read_io](https://crates.io/crates/read_io).

Here is the new input code:

```rust
let mut t: i32 = read!("Enter the time in seconds: ").unwrap();
```

Hopefully something like this can be added to the standard library one day.

Keep in mind I didn't use this crate for the code example because it would impact compile times.

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
```

### Overview

TODO: rewrite overview and code

Compile times are bad, error messages are bad, documentation is bad. 
This language feels like it was written by someone who wanted to make C even harder to use.

```c
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

## Go

- Documentation: 

  https://pkg.go.dev/std

- Build Command:

  `go run .`

- Install Guide:

  https://go.dev/doc/install

### Code

```
package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {
	s := bufio.NewReader(os.Stdin)
	fmt.Print("Enter time in seconds: ")
	text, _ := s.ReadString('\r')
	text = strings.Trim(text, "\n\r")
	t, _ := strconv.Atoi(text)

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

TODO: rewrite this.

This language is somehow more complicated than rust.
The functions are super weird, `ReadString` reads up to a certain character and includes it. So your always going to have `\r\n` in your input.
Worse than that, there's no pop function. Not epic.
I can't believe how bad the documentation is and how shit the API is.
I see why V exists now, yikes...
I do like the way it auto imports modules I would like that for rust since it's such an import heavy language.

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

TODO: rewrite

Installing is simple. 
Documentation is decent and the language is quite simple.
It's like a complied version of python. 
Compile times are quite slow which is unfortunate since it might be a good choice otherwise.

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

Kotlin is meant to be used with IntelliJ IDEA, but I don't like IDE's so I followed the command line tutorial instead.
I measured `5.01` seconds to compile and run hello world. I don't think it should be that slow so I'll just leave it up to my own incompetence.

I kept running into these overload ambiguity errors. I was quite frustrating.

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

Kotlin is easier than Java. It's a very mediocre language in all aspects. 
However since android requires you to use either Java or Kotlin I'd go with Kotlin.

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
I like C# more than Kotlin and Java, however it's still pretty mediocre. There are faster and simpler languages.

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