## Goals

I've heard good and bad things about many languages before, people often pick favourites and get very defensive about them.
Sometimes it feels like the *quality* of a language is determined by how old it is, rather than how good it is.

To get to the bottom of this, I've decided to remake the same project in over 15 different languages.

The project I've chosen is a countdown timer. This feels like a good choice since it requires:

- Getting input from the user
- Accessing the OS's sleep function
- Formatting a string with zero padding, for example: `1:18` into `01:18`
- Using the math function `floor`

Here's some pseudo code of the timer:

```python
time = 60

while time != 0 
    mins = floor(t / 60)
    secs = t % 60

    print(mins, secs)
    sleep(1 second)
    t = t - 1
```

### Rankings

There are some important things to note when looking for a new language.
The best language is one that is easiest to learn.
Many new `simple` languages lack documentation and are not a good choice for beginners.

Tooling is also very important, having a nice build tool like [npm](https://www.npmjs.com/) or [cargo](https://doc.rust-lang.org/cargo/) can make programming easier.

Libraries are very important aswell, most of us don't have time to reinvent the wheel.
Sometimes a language is worth using for a single package.
Many people use Python just for TensorFlow or PyTorch.

--- 

#### The best & worst languages

- Best languages for beginner programmers
  - Choose whatever you want it doesn't matter

- Best languages for experienced programmers
  - V
  - Rust
  - Nim

  V is a language I hope to move into the beginner category. 
  It's simple, preformat and modern. 
  It lacks documentation and may require you to look through the source code. 
  It's lacking a few features and you'll often get compiler panics.

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
  - Zig
  - Java
  - Lua

  These languages all have better alternatives.
  - Kotlin is better than Java
  - Anything is better than Lua
  - Odin is better than Zig

---

| Language   | Simplicity | Documentation? | Build Tools | Compile Times(ms) | Error Messages |
|------------|------------|----------------|-------------|-------------------|----------------|
| Python     | Good       | Okay           | Okay        | -                 | Okay           |
| JavaScript | Bad        | Okay           | Good        | -                 | Okay           |
| TypeScript | Bad        | Okay           | Good        | -                 | Okay           |
| C          | Okay       | Okay           | Bad         | 800               | Bad            |
| C++        | Bad        | Okay           | Bad         | 1359              | Bad            |
| Go         | Bad        | Bad            | Good        | 436               | Okay           |
| Rust       | Okay       | Great          | Great       | 1114              | Great          |
| V          | Great      | Good           | Good        | 430               | Good           |
| Nim        | Good       | Good           | Good        | 965               | Okay           |
| Zig        | 0____0     | Bad            | Okay        | 5297              | Bad            |
| Odin       | Bad        | Okay           | Good        | 821               | Okay           |
| Java       | Bad        | Bad            | Bad         | -                 | Okay           |
| Kotlin     | Okay       | Okay           | Bad         | -                 | Bad            |
| Lua        |            | Bad            | Bad         | -                 | Okay           |
| Elixir     | Bad        | Good           |             | -                 |                |
| Haskell    | 0____0     | Bad            | Bad         | 3738              | Bad            |
| Gleam      | Okay       | Bad            | Great       | 1891              | Great          |

---

#### Something I like about each language:

Python: Very clean input function. Only language that has a `divmod` function. Standard library seems very strong and comprehensive.

JavaScript: Despite being built for the web. It's was still very easy to setup dependencies and find documentation.

TypeScript: It's JavaScript with compile time type checking, what's not to love?

C: `printf` is very easy to use. No hassles with flushing `stdout`.

C++: It has scoped variables(RAII), which is a necessary feature that C does not have. 
Plus you can use the C standard library in C++ and have the best of both worlds.

Go: Automatically imports every that you need. I wish rust had this! 

Rust: I don't think rust's benefits matter for a project this small.
However the `cargo` is the best build tool I've ever used. 
Plus the documentation for this language is unmatched. 

V: It's simple to write, fast to compile.
This language is what Go should have been.

Nim: Very simple to write, feels like a cross between rust and python.

Zig: This language is awful

Odin: This language is also awful

Java: This language is awful

Kotlin: Much better than Java, I think I'd enjoy writing android apps with this language.

Lua: This was the only language on the list which made me angry.

C#: It's better than Java.

Elixir: The only functional language that actually worked for me. Opened my mind to new ways of thinking about programming.

Gleam: It has great error messages and tooling. It takes a lot of inspiration from Rust which is my favourite language. I won't pretend to understand functional programming however this felt like the most beginner friendly. 

---

### Languages I attempt to use

- Haskell

  - Confusing to install

  -  No documentation

  -  Error are difficult to understand

  -  Compiler is around 1 GB

  -  3742ms to compile hello world.

  -  Functional languages are already difficult

- OCaml

  - No windows support

---

## Interpreted

### Python

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

#### Code

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

### JavaScript

Keep in mind that I'm talking about JavaScript + Node.js.

- Documentation: 

  https://developer.mozilla.org/en-US/docs/Web/JavaScript

  https://nodejs.org/docs/latest-v15.x/api/

  https://nodejs.dev/learn/introduction-to-nodejs

- Install Guide:

  https://nodejs.org/en/

- Build Command: 

  `node timer.js`

#### Code

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

#### Overview

TODO: rewrite

It may be hard for people to understand that JavaScript requires a runtime like NodeJs or Deno. It's hard to recommend to new programmers given how complicated the tech stack is.

Node's `read-line` class is not easy to use, I used the library `prompt-sync` instead. 

I'm not a fan of the async code required, it's clear that JavaScript was built for the web.

Please use it for the web, not for desktop applications.

### TypeScript

- Documentation: 

  https://www.typescriptlang.org/docs/

- Install Guide:

  https://www.typescriptlang.org/download

- Build Command: 

  `yarn dev`

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

## Compiled

### C

- Documentation: 

  There is no official documentation

- Build Command:

  `gcc timer.c -o timer.exe;timer.exe`

- Install Guide:

  C has no official install guide.

#### Code

```c
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
```

#### Overview

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

### C++

- Documentation: 

  https://en.cppreference.com/w/

- Build Command:

  `g++ timer.cpp -o timer.exe; ./timer`

- Install Guide:

  https://isocpp.org/get-started 


#### Code

```cpp
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
```

#### Overview

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

Firstly it's only avaliable with C++20. 
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

Please just learn Rust.

### V 

- Documentation: 

  https://github.com/vlang/v/blob/master/doc/docs.md

  https://modules.vlang.io/

- Build Command:

  `v run .`

- Install Guide:

  V has no official guide.

#### Code

```v
    input := os.input('Enter the time in seconds: ')
	mut t := input.i16()

	for t != 0 {
		mins := math.floor(t / 60)
		secs := t % 60
		print('${mins:02}:${secs:02}\r')
		time.sleep(1 * time.second)
		t--
	}
```

#### Overview

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

### Rust

- Documentation: 

  https://doc.rust-lang.org/book/

  https://doc.rust-lang.org/std/

- Build Command:

  `cargo run`

- Install Guide:

  https://www.rust-lang.org/learn/get-started

#### Code

```rust
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
```

#### Overview

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

### Zig

- Documentation: 

  https://ziglang.org/documentation/master/
  https://ziglang.org/documentation/master/std/

- Build Command:

  `zig build run`

- Install Guide:

  https://ziglang.org/learn/getting-started/


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

### Go

- Documentation: 

  https://pkg.go.dev/std

- Build Command:

  `go run .`

- Install Guide:

  https://go.dev/doc/install

TODO rewrite this.

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

### Nim

- Documentation: 
  https://nim-lang.org/docs/lib.html
  https://nim-lang.org/docs/manual.html

- Build Command:

  `nim c -r timer.nim`

- Install Guide:

  https://nim-lang.org/install_windows.html


Installing is simple. 
Documentation is decent and the language is quite simple.
It's like a complied version of python. 
Compile times are quite slow which is unfortunate since it might be a good choice otherwise.

### Odin

- Documentation: 

  https://pkg.odin-lang.org/core/

- Build Command:

  `odin run .`

- Install Guide:

  https://odin-lang.org/docs/install/
  This guide is bad and does not provide enough instructions.

Documentation does not have a functional search and the source code is hard to read. 
Even with LSP I cannot find a way to convert a string to an int.

## Bytecode

### Java

- Documentation: 

  https://docs.oracle.com/javase/8/docs/api/overview-summary.html

- Build Command:

  `javac timer.java;java Timer`

- Install Guide:

  > This is better than the official website

  https://adoptopenjdk.net/

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

### Kotlin

- Documentation: 

  https://kotlinlang.org/api/latest/jvm/stdlib/

- Build Command:

  `kotlinc timer.kt -include-runtime -d timer.jar;java -jar timer.jar`

- Install Guide:

  https://kotlinlang.org/docs/getting-started.html

  https://kotlinlang.org/docs/command-line.html


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

### C#

- Documentation: 

  https://docs.microsoft.com/en-us/dotnet/csharp/

- Build Command:

  `dotnet run`

- Install Guide:

  https://dotnet.microsoft.com/en-us/learn/dotnet/hello-world-tutorial/install


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
   at Program.<Main>$(String[] args) in D:\Git\Project-Omnia\Bytecode\C#\Program.cs:line 9
```

The documentation and build tools are okay.
I like C# more than Kotlin and Java, however it's still pretty mediocre. There are faster and simpler languages.

### Lua

- Documentation: 

  https://www.lua.org/manual/5.4/

- Build Command:

  `lua timer.lua`

- Install Guide:

  There is no install guide

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

## Functional

### Gleam

Required me to put gleam.exe in path. It's nice that it's just a single exe though.
Then I needed to install erlang and put it into path.

Trying to get the user input was not easy.

*The `io.get_list` function has been moved to the `gleam_os` library.*

Where is this gleam_os library? This library does not seem to have much documentation?

`gleam add gleam_erlang`

No sleep function. How to write a while loop? Where are the if statements?

### Elixir

Check out these errors I got:

```log
** (ArgumentError) cannot invoke def/2 outside module
    (elixir 1.13.3) lib/kernel.ex:6111: Kernel.assert_module_scope/3
    (elixir 1.13.3) lib/kernel.ex:4839: Kernel.define/4
    (elixir 1.13.3) expanding macro: Kernel.def/2
    timer.exs:4: (file)
```
```log
** (Protocol.UndefinedError) protocol String.Chars not implemented for {10, ""} of type Tuple
    (elixir 1.13.3) lib/string/chars.ex:3: String.Chars.impl_for!/1
    (elixir 1.13.3) lib/string/chars.ex:22: String.Chars.to_string/1
    (elixir 1.13.3) lib/io.ex:724: IO.puts/2
```

Oof. I'm still impressed with some of the things I've seen. I don't think *Elixir* is it yet.