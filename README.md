## Goals

I've heard good and bad things about many languages before, people often pick favourites and get very defensive about them.
Sometimes it feels like the *quality* of a language is determined by how old it is, rather than how good it is.

To get to the bottom of this, I've decided to remake the same project in over 20 different languages.

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
    t = t - 1
```

### Rankings

There are some import things to note when looking for a new language.
The best language is one that is easiest to learn.
Many new `simple` languages lack documentation and are not a good choice for people learning.

Tooling is often very important, having a nice build tool like [npm](https://www.npmjs.com/) or [cargo](https://doc.rust-lang.org/cargo/) can make life easy.

Libraries are a very important part of any language eco-system. 
Most of us don't have time to reinvent the wheel every day. 
Sometimes languages are worth using for a simple package.
Many people use Python just for TensorFlow or PyTorch.

--- 

#### The best & worst languages

- Best languages for beginner programmers
  - Choose whatever you want

- Best languages for experienced programmers
  - V
  - Rust
  - Nim

  V is a language I hope to move into the beginner category. It's simple, preformat and modern.
  It sometimes requires you to dig through the source code to find stuff. 
  Hopefully the issues will be resolved by version 1.0.

  Rust has great tooling, documentation, a [borrow checker](https://doc.rust-lang.org/book/ch04-02-references-and-borrowing.html) and is easy write. 

  Nim is very young but looks very promising. It tries to make low level programming as simple as python. It's tooling and documentation are decent and it's pretty easy to write. 

- Best bytecode languages
  - C#
  - Kotlin

  I don't like bytecode languages but if you can't help yourself, C# and Kotlin are decent choices.

- Best functional languages
  - Elixir
  - Gleam

  If you like functional programming, you might like one of these.

- Languages you should never use
  - Zig
  - Java
  - Lua

  These languages all have better alternatives.

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
| Erlang     |            |                |             | -                 |                |
| Gleam      | Bad        | Bad            | Great       | 1891              | Great          |
| PureScript |            |                |             | -                 |                |

Unfinished: Haskell, PureScript

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

Haskell: TODO

Elm: TODO

ReasonML: TODO

PureScript: TODO

Gleam: It has great error messages and tooling. It takes a lot of inspiration from Rust which is my favourite language. I won't pretend to understand functional programming however this felt like the most beginner friendly. 

## Interpreted

### Python

- Documentation: 

  https://docs.python.org/3/

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

### Haskell

- Documentation: 

  There is no official documentation.

- Build Command:

  `ghc timer.hs;./timer.exe`

- Install Guide:

  https://www.haskell.org/downloads/

TODO rewrite

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

This isn't English. I think I'm supposed to go here: https://www.haskell.org/ghc/download_ghc_9_2_1.html#windows64

I just used `scoop install haskell stack` instead. It's 500mb's... oof.

To setup the project:

```
stack new timer
cd timer
stack run
```

Then download another 400MB for the compile which is already installed.

Then downloading it downloaded msys2??

I guess we're installing Linux now.

I opted for a simpler approach `ghc timer.hs;./timer.exe`

Compile times are exceptionally bad for this language.
3742ms to compile hello world.

The documentation is worse than Elixir plus the language is harder to understand.

This compile message is formatted nicely but impossible to understand.

```haskell
timer.hs:8:3: error:
    • Couldn't match expected type ‘IO a0’ with actual type ‘Integer’
    • In a stmt of a 'do' block: countdown (t)
      In the expression:
        do putStr "Enter a time in seconds:"
           s <- getLine
           let t = ...
           countdown (t)
           ....
      In an equation for ‘main’:
          main
            = do putStr "Enter a time in seconds:"
                 s <- getLine
                 let t = ...
                 ....
  |
8 |   countdown (t)
  |   ^^^^^^^^^^^^^
```

This language is cursed.

### Erlang

https://www.erlang.org/doc/getting_started/intro.html

The documentation for this language is so out of date. I can't even find what the file extension is.