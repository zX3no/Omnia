Unfinished: Odin, Haskell 

TODO: Java, Kotlin, C#, Clojure, Lua, Elm, ReasonML

Missing Windows support: OCaml, Clojure

Can't find input function: Gleam, Odin

### Languages

- Dynamic
  - Python
  - JavaScript

- Compiled
  - C
  - V
  - Go
  - Rust
  - C++
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
  - Elm
  - ReasonML  
  - OCaml
  - Gleam
  - Haskell
  - Clojure


### Rankings

**Overall**

| Language | Pos |
|----------|-----|
|          |     |


| Language   | Simplicity | Documentation? | Build Tools | Manual path modification | Compile Times | Error Messages |
|------------|------------|----------------|-------------|--------------------------|---------------|----------------|
| Python     | Good       | Meh            | Bad         | No*                      | -             |                |
| Lua        | Bad        | Bad            | Bad         | Yes                      | -             |                |
| JavaScript | Bad        | Bad            | Good        | No                       | -             |                |
| C          | Bad        | Meh            | Bad         | No*                      | Okay          | Bad            |
| C++        | Bad        | Meh            | Bad         | No*                      | Okay          | Bad            |
| Nim        | Good       | Meh            | Good        | Yes                      | Slow          |                |
| Rust       | Okay       | Good           | Good        | No                       | Slow          | Good           |
| Go         | Bad        | Bad            | Okay        | No                       | Fast          |                |
| V          | Good       | Meh*           | Good        | Yes                      | Fast          |                |

**depends on install method*

**V has good library documentation, however documentation for the language isn't finished so it's a bit rough. It's better than C/C++/Python*

TODO: benchmark compile times

I'll need to go over each section in each language with sources such as the documentation.

# Interpreted

### Python
Python is simple as long as you don't require any dependencies.
Just run `python timer.py`.


### JavaScript

I would say JavaScript syntax is about as complicated as Rust. 
I had to use prompt-sync to get the users input.
Installing Node and setting up dependencies was easy.

It's okay.

# Compiled

### C
Fairly simple to write. The input function is poorly designed. 
You pass your variable in by reference, rather than the function returning your inputted value. 
There is no cross-platform sleep function for some reason?

Compiling with C is annoying. I used `gcc timer.c -o timer.exe;timer.exe` to build and run.
This sucks because if it fails to compile it will run the program anyway.

printf is actually pretty decent. Headers are pretty archaic. Don't think I'd want to use C for massive projects but it's not too bad for this.

### V 

Had to setup environment variable for it.
Tooling is not very good so there was no language server. Maybe mines just broken?
The code is really nice to write and libraries are clean and easy to use.
It took me a bit to find the documentation for everything.

https://modules.vlang.io/

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

Here is the low level code:
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
```rust
  let mut t = s.parse::<i32>().unwrap();
```

### C++

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

# Bytecode

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

# Functional

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