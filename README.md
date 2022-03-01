I feel this information could be useful for people looking for a language.
Should rename the project.

## Goals

I've heard good and bad things about many languages before, people often pick favourites and get very defensive about them.
Sometimes it feels like the *quality* of a language is determined by how old it is, rather than how good it is.

To get to the bottom of this, I've deciced to remake the same project in over 20 different languages.

The project I've chosen is a countdown timer. This feels like a good choice since it requires:

- Getting the users input from `stdin`
- Accessing the OS's sleep function
- Formatting the time left with zero padding, for example: `01:08`
- Using a floor function from the languages math library

Here's some pseudo code of the timer:

```
time = 60

while time != 0 
    mins = floor(t / 60)
    secs = t % 60

    print mins secs
    sleep 1 second
    t--
```

### Languages

TODO REMOVE

- Dynamic
  - Python
  - JavaScript
  - TypeScript

- Compiled
  - C
  - C++
  - Go
  - Rust
  - V
  - Nim
  - Zig
  - Odin

- Bytecode
  - Java
  - Kotlin
  - Lua
  - C#

- Functional
  - Elixir
  - Haskell
  - Elm
  - ReasonML  
  - OCaml
  - Gleam
  - Clojure


### Rankings

There are some import things to note when looking for a new language.
The best language is one that is easiest to learn.
Many new `simple` languages lack documentation and are not a good choice for people learning.

Tooling is often very important, having a nice build tool like [npm](https://www.npmjs.com/) or [cargo](https://doc.rust-lang.org/cargo/) can make life easy.

Libraries are a very important part of any language eco-system. 
Most of us don't have time to reinvent the wheel every day. 
Sometimes languages are worth using for a simple package.
Many people use Python just for TensorFlow or PyTorch.

There will two ranking sections, one for beginners, the other for advanced users.

--- 

#### Something I like about each language:

Python: Very clean input function. Only language that has a `divmod` function. Standard library seems very strong and comprehensive.

JavaScript: Despite being built for the web. It's was still very easy to setup dependencies and find documentation.

TypeScript: TODO

C: `printf` is very easy to use. No hassles with flushing `stdout`.

C++: I've used this language a lot before I swapped to rust. I swapped for a reason.

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

Lua: TODO

C#: It's better than Java?

Elixir: The only functional language that actually worked for me. Opened my mind to new ways of thinking about programming.

Haskell: TODO

Elm: TODO

ReasonML: TODO

OCaml: Does not support Windows.

Gleam: This language want's to make functional programing accessible, however it's very new. I'll keep an eye on this one.

Clojure: Does not support Windows.

#### Beginner

| Language | Pos |
|----------|-----|
|          |     |

#### Advanced

| Language | Pos |
|----------|-----|
|          |     |


#### All

| Language   | Simplicity | Documentation? | Build Tools | Updates Path | Compile Times(ms) | Error Messages | Offical Install Guide                               |
|------------|------------|----------------|-------------|--------------|-------------------|----------------|-----------------------------------------------------|
| Python     | Good       | Meh            | Bad         | No           | -                 |                | [Yes](https://www.python.org/about/gettingstarted/) |
| JavaScript | Bad        | Bad            | Good        | Yes          | -                 |                | No                                                  |
| TypeScript |            |                |             |              |                   |                |                                                     |
| C          | Bad        | Meh            | Bad         | Yes          | Okay              | Bad            | No                                                  |
| C++        | Bad        | Meh            | Bad         | Yes          | Okay              | Bad            | [Yes](https://isocpp.org/get-started)               |
| Go         | Bad        | Bad            | Okay        | Yes          | Fast              |                |                                                     |
| Rust       | Okay       | Good           | Good        | Yes          | Slow              | Good           |                                                     |
| V          | Good       | Good           | Good        | No           | Fast              |                |                                                     |
| Nim        | Good       | Meh            | Good        | No           | Slow              |                |                                                     |
| Zig        | Awful      |                |             |              |                   |                |                                                     |
| Odin       |            |                |             |              |                   |                |                                                     |
| Java       | Bad        |                |             |              |                   |                |                                                     |
| Kotlin     | Okay       |                |             |              |                   |                |                                                     |
| Lua        |            |                |             |              |                   |                |                                                     |
| C#         |            |                |             |              |                   |                |                                                     |
| Elixir     |            |                |             |              |                   |                |                                                     |
| Haskell    |            |                |             |              |                   |                |                                                     |
|            |            |                |             |              |                   |                |                                                     |
|            |            |                |             |              |                   |                |                                                     |

Unfinished: Odin, Haskell, Zig 

TODO: Lua, Elm, ReasonML

Missing Windows support: OCaml, Clojure

Can't find input function: Gleam, Odin

TODO: benchmark compile times

I'll need to go over each section in each language with sources such as the documentation.

## Interpreted

### Python

- Documentation: 

  https://docs.python.org/3/

- Required Computer Knowledge: 

  Low

- Install Guide:

  https://www.python.org/ > 
  https://www.python.org/about/gettingstarted/ >
  https://wiki.python.org/moin/BeginnersGuide/Download >
  https://www.python.org/downloads/ 

  Adding to path requires ticking a checkbox

  Cannot be installed by following instructions;.

Python is simple as long as you don't require any dependencies.
Just run `python timer.py`.

### JavaScript

Keep in mind that I'm talking about JavaScript + Node.js.

- Documentation: 

https://developer.mozilla.org/en-US/docs/Web/JavaScript
https://nodejs.org/docs/latest-v15.x/api/
https://nodejs.dev/learn/introduction-to-nodejs

I really like node's introduction to nodejs.

- Required Computer Knowledge:

  Moderate

- Install Guide:
  First you need to understand that JavaScript is dynamic and requires a `runtime` like Node.js or Deno.

  https://nodejs.org/en/

  Installing is really easy, doesn't require modifying your path. 


It may be hard for people to understand that JavScript requires a runtime like NodeJs. I can't recommend this language to new users because of this.

The JavaScript syntax is pretty ugly.
I had to used the `prompt-sync` package to get the users input because `read-line` was super complicated.
Installing Node and setting up dependencies was easy.

## Compiled

### C

Fairly simple to write. The input function is poorly designed. 
You pass your variable in by reference, rather than the function returning your inputted value. 
There is no cross-platform sleep function for some reason?

Compiling with C is annoying. I used `gcc timer.c -o timer.exe;timer.exe` to build and run.
This sucks because if it fails to compile it will run the program anyway.

printf is actually pretty decent. Headers are pretty archaic. Don't think I'd want to use C for massive projects but it's not too bad for this.

### V 

Had to setup environment variable for it.
Language server is in alpha and did not work for me.
The code is really nice to write and libraries are clean and easy to use.
It took me a bit to find the documentation for everything.

https://modules.vlang.io/

Error messages are decent:  

```
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

Here `t` is a `string` when it should be an `i16`.

### Rust
Installing is pretty difficult as it requires you to install Visual Studio with C++ as well. 
I tried with Visual Studio 2022 and it didn't work so I had to down grade.

Like javascript I had to user a library to get the user input.
The first one I tried text_io, did not seem to work correctly on windows. 
This is pretty common for all aspects of software engineering (as we saw with lua). 
I'll be honest Rust is my favorite language. However I can't ignore how dumb this over-site is.

Rust loves verbosity, in a some of ways it's more low level than C.
Usually rust has a good balance of low level and high level functions.
There should be a read! macro like println!.

Here's the low level code:

```rust
use std::io::{stdin, stdout, Write};

let mut s = String::new();
print!("Please enter some text: ");
stdout().flush().unwrap();
stdin().read_line(&mut s).unwrap();

// remove \r\n
s.pop();
s.pop();

let mut t = s.parse::<i32>().unwrap();
println!("You entered the number: {}", t);
```

First of all we're reading the raw string, which isn't bad, I just don't want that.

Notice how we need to remove '\r\n' from the end of the string.

There is also stdout().flush(). 
This is because stdout frequently line-buffered by default and needs to be flush for the output to be displayed immediately.
This can be fixed by using `eprint! rather than print!` as it's flushed immediately. Keep in mind this goes to `stderr` rather than `stdout`.

We still need to convert the string in a proper type. We do this with the parse function.

To fix this problem I created a crate (a rust dependency).

It defines a macro that can be imported and used to get input.

Here is the new input code:

```rust
use read_io::read;

let mut t: i32 = read!("Enter the time in seconds: ");
```

Hopefully something like this can be added to the standard library one day.

There are actually a lot of discussion about Rust's lack of a read function.

https://github.com/rust-lang/rust/pull/75435
https://github.com/rust-lang/rfcs/pull/3196

A list of libraries that try to fix this issue:
https://crates.io/crates/text_io
https://crates.io/crates/ezio
https://crates.io/crates/scan-rules
https://crates.io/crates/scan_fmt

TODO: Rewrite this section.

### C++

Install Guide:

https://isocpp.org/ > https://isocpp.org/get-started > https://nuwen.net/mingw.html > https://nuwen.net/mingw.html#install

Describes setting up enviroment variables. Might be hard to follow since it doesn't explain how to open the command prompt.

This is somehow worse than C. I think I understand why people don't like this language now.

This print function is not good. Maybe I'm using it wrong?

```cpp
  std::cout << std::setfill('0') << std::setw(2) << mins;
  std::cout << ":";
  std::cout << std::setfill('0') << std::setw(2) << secs;
```

### Zig

Download the binary and add to path.

Creating a project

```bash
mkdir timer
zig init-exe 
zig run 

error: `zig run` expects at least one positional argument
```

`zig run` is not like `cargo run`

I swapped to `zig build-exe timer.zig;./timer.exe`

Compile times don't seem great.

```
C:\path\zig\lib\std\fmt.zig:82:9: error: Expected tuple or struct argument, found std.fmt.ParseIntError!i64
        @compileError("Expected tuple or struct argument, found " ++ @typeName(ArgsType));
        ^
C:\path\zig\lib\std\io\writer.zig:28:34: note: called from here
            return std.fmt.format(self, format, args);
                                 ^
C:\path\zig\lib\std\debug.zig:67:27: note: called from here
    nosuspend stderr.print(fmt, args) catch return;
                          ^
.\timer.zig:15:14: note: called from here
        print("{}", t);
             ^
.\timer.zig:4:29: note: called from here
pub fn main() anyerror!void {
                            ^
C:\path\zig\lib\std\io\writer.zig:28:34: error: expected type 'std.os.WriteError!void', found '@typeInfo(@typeInfo(@TypeOf(std.fmt.format)).Fn.return_type.?).ErrorUnion.error_set!void'
            return std.fmt.format(self, format, args);
                                 ^
C:\path\zig\lib\std\debug.zig:67:27: note: called from here
    nosuspend stderr.print(fmt, args) catch return;
                          ^
.\timer.zig:15:14: note: called from here
        print("{}", t);
             ^
.\timer.zig:4:29: note: called from here
pub fn main() anyerror!void {
                            ^
C:\path\zig\lib\std\io\writer.zig:28:34: note: error set '@typeInfo(@typeInfo(@TypeOf(std.fmt.format)).Fn.return_type.?).ErrorUnion.error_set' cannot cast into error set 'std.os.WriteError'
            return std.fmt.format(self, format, args);
                                 ^
```

Nice easy to understand error messages.

This language feels like it was written by someone who wanted to make C even harder to use.

Documentation is not good.

### Go

This language is somehow more complicated than rust.
The functions are super weird, `ReadString` reads up to a certain character and includes it. So your always going to have `\r\n` in your input.
Worse than that, there's no pop function. Not epic.
I can't believe how bad the documentation is and how shit the api is.
I see why V exists now, yikes...
I do like the way it auto imports modules I would like that for rust since it's such an import heavy language.


### Nim

Had to setup environment variable for it.
Docs are okay.
https://nim-lang.org/docs/lib.html

Ergonomics are decent. It's like a complied version of python. But it compiles pretty slow so I don't see a good use for it.

### Odin

Requires setting path.

Setup was pretty easy.

Use `odin run timer.odin` to run.

Documentation is seems good:

https://pkg.odin-lang.org/core/

However I cannot find how to convert a string to an integer.

The language is very new but it's seem pretty meh like the rest of the C wannabees.

## Bytecode

### Lua

Had to setup environment variable for it.
I had to download both lua and luarocks. 
Both required me to use a package manager.
Lua's syntax is somehow worse than pythons. 
Most of the resources on this language are 10 years old.

I don't understand the appeal.

I needed to download luasocket for an accurate sleep function.
After running `luarocks install luasocket` i received a nice error:
```
Installing https://luarocks.org/luasocket-3.0rc1-2.src.rock

luasocket 3.0rc1-2 depends on lua >= 5.1 (5.4-1 provided by VM)
mingw32-gcc -O2 -c -o src/luasocket.o -IC:/Users/Bay/scoop/apps/lua/current/include src/luasocket.c -DLUA_COMPAT_APIINTCASTS -DLUASOCKET_DEBUG -DLUASOCKET_INET_PTON -DWINVER=0x0501 -DLUASOCKET_API=__declspec(dllexport) -DMIME_API=__declspec(dllexport) -Ic:/windows/system32/include
'mingw32-gcc' is not recognized as an internal or external command,
operable program or batch file.

Error: Build error: Failed compiling object src/luasocket.o
```

Oops looks like someone wants to run linux commands.

I manually installed both lua and luarocks. Which was not easy since the lua website is so bad.
Now I have this error:

```
Installing https://luarocks.org/luasocket-3.0rc1-2.src.rock

Error: Failed finding Lua header files. You may need to install them or configure LUA_INCDIR.
```

I'm going to pass on this language. 

### Java

This language is like 100 years old but there still isn't any good documentation for it.

Building is pretty standard `javac timer.java;java Timer`

Errors are pretty decent: 

```
timer.java:8: error: incompatible types: int cannot be converted to boolean
    while (t) {
           ^
timer.java:9: error: incompatible types: possible lossy conversion from double to int
        int mins = Math.floor(t / 60);
                             ^
2 errors
Exception in thread "main" java.lang.NumberFormatException: Cannot parse null string
```

Java is old, overcomplicated and not very useful. The benefits of byte code languages don't seem to be worth it nowadays.
Especially given V's sub second compile times.

I've used maven a few times and it seems okay.

### C#

Getting setup with this language is extremely difficult. I don't know what I need, visual studio, .NET SDK?
After downloading something, it seems to work?

Creating a new project with `dotnet new console --framework net6.0`

Running with `dotnet run`

Error messages:
```
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

Definitely better than Java however it's still a bit rough around the edges.
Documentation is okay.
Build tools are okay.

### Kotlin

Kotlin seems to be focus towards IDE use. However there is an article about using it in the command line.

https://kotlinlang.org/docs/command-line.html

I don't know if it's suppose to take so long to compile but it's basically unusable.

I measured `5.01` seconds to compile and run hello world.

```
kotlinc timer.kt -include-runtime -d timer.jar
java -jar timer.jar
```

Don't see the point of even trying to use this language but i'll give it a go.

An error message:

```
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

I got so many of these overload ambiguity errors it's insane.

The syntax is okay, much simpler than java. 

Documentation is okay. 

Error messages and compile times are awful.

If this language didn't give me so much hassle with types, i would've given it a *good* in simplicity.

## Functional

### Elm

This language is built for making websites?

TODO this can't be right

### ReasonML

They have some instructions on setup. 

```
git clone https://github.com/esy-ocaml/hello-reason.git
cd hello-reason

# Install all dependencies (might take a while in the first run)
esy 

# Compile and run Hello.exe
esy x Hello
```

It then install 10,000 packages and spits out this error: 
```
info esy 0.6.12 (using package.json)
info fetching: done
error command failed: "tar" "xf" "/cygdrive/d/Git/Project-Omnia/Functional/ReasonML/hello-reason/_esy/default/dist/ad5be437c50b699d66afc4e4a159c290" "-C" "/cygdrive/c/Users/Bay/AppData/Local/Temp/esy-dff42d"
      stderr:
               tar: ocamlbuild-0.14.1/examples/07-dependent-projects/libdemo: Cannot create symlink to ‘../04-library/libdemo’: Operation not permitted
               tar: Exiting with failure status due to previous errors

      stdout:

error: error running command
  unpacking @opam/ocamlbuild@opam:0.14.1
  installing @opam/ocamlbuild@opam:0.14.1
esy: exiting due to errors above
```
🤨

TODO ...

### OCaml

>OCaml on Windows is still a work in progress. In the meantime, if you only need to run OCaml programs on a Windows machine, then the simplest solution is to use the Windows Subsystem for Linux 2 (WSL2).

### Gleam

Required me to put gleam.exe in path. It's nice that it's just a single exe though.
Then I needed to install erlang and put it into path.

Trying to get the user input was not easy.

*The `io.get_list` function has been moved to the `gleam_os` library.*

Where is this gleam_os library? This library does not seem to have much documentation?

This language seemed pretty cool.

L

### Elixir

Check out these errors I got:

```
** (ArgumentError) cannot invoke def/2 outside module
    (elixir 1.13.3) lib/kernel.ex:6111: Kernel.assert_module_scope/3
    (elixir 1.13.3) lib/kernel.ex:4839: Kernel.define/4
    (elixir 1.13.3) expanding macro: Kernel.def/2
    timer.exs:4: (file)
```
```
** (Protocol.UndefinedError) protocol String.Chars not implemented for {10, ""} of type Tuple
    (elixir 1.13.3) lib/string/chars.ex:3: String.Chars.impl_for!/1
    (elixir 1.13.3) lib/string/chars.ex:22: String.Chars.to_string/1
    (elixir 1.13.3) lib/io.ex:724: IO.puts/2
```

Oof. This language seems pretty complicated and not very well documented.

Despite that I've still managed to make it work. I'm pretty impressed with some of the things I've seen. I don't think *Elixir* is it yet.

### Haskell

Starting off with some extremely confusing install instructions:

```
This page describes the installation of the Haskell toolchain, which consists of the following tools:

GHC: the Glasgow Haskell Compiler

cabal-install: the Cabal installation tool for managing Haskell software

stack: a cross-platform program for developing Haskell projects

haskell-language-server (optional): A language server for developers to integrate with their editor/IDE

Installation instructions
for Linux, macOS, FreeBSD, Windows or WSL2

Install GHC, cabal-install and haskell-language-server via GHCup
To install stack, follow the instructions here (N.B. stack does not support FreeBSD)
```

This isn't even english. I think i'm supposed to go here: https://www.haskell.org/ghc/download_ghc_9_2_1.html#windows64

I just used `scoop install haskell stack` instead. It's 500mb's... oof.

To setup the project:
```
stack new timer
cd timer
stack run
```
Then download another 400MB for the compile which is already installed.

Then downloading it downloaded msys2??

I guess we're installing linux now.

I opted for a simpler approach `ghc timer.hs;./timer.exe`

Compile times are exceptionally bad for this language.

The documentation is worse than Elixir plus the language is harder to understand.

TODO

### Clojure 

> Currently, clj on Windows is in an alpha state. Please try it and provide feedback in the TDEPS jira or on #clj-on-windows room on Clojurians slack.