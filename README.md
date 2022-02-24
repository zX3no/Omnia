### Goals
I really want to get to the bottom of the language war. 
Why are there so many languages? 
Which ones are good or bad?

To determine this I will create the same project multiple times in different languages.

The program must be simple and have a GUI.

A timer seems like a good fit.

### Languages

- Dynamic
  - Python
  - JavaScript
  - Lua

- Compiled
  - C
  - V
  - Go
  - Rust
  - C++
  - Nim

- Bytecode
  - Java
  - Kotlin
  - C#

- Functional
  - Elm
  - ReasonML  


### Rankings

**Overall**

| Language | Pos |
|----------|-----|
|          |     |


| Language   | Simplicity | Documentation? | Build Tools | Manual path modification | Compile Times |
|------------|------------|----------------|-------------|--------------------------|---------------|
| Python     | Good       | Meh            | Bad         | No*                      | -             |
| Lua        | Bad        | Bad            | Bad         | Yes                      | -             |
| JavaScript | Bad        | Bad            | Good        | No                       | -             |
| C          | Bad        | Meh            | Bad         | No*                      | Okay          |
| C++        | Bad        | Meh            | Bad         | No*                      | Okay          |
| Nim        | Good       | Meh            | Good        | Yes                      | Slow          |
| Rust       | Okay       | Good           | Good        | No                       | Slow          |
| Go         | Bad        | Bad            | Okay        | No                       | Fast          |
| V          | Good       | Meh*           | Good        | Yes                      | Fast          |

**depends on install method*
**V has good library documentation, however documentation for the language isn't finished so it's a bit rough. It's better than C/C++/Python*

TODO: benchmark compile times

I'll need to go over each section in each language with sources such as the documentation.

### Python
Python is simple as long as you don't require any dependencies.
Just run `python timer.py`.


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

### JavaScript

I would say JavaScript syntax is about as complicated as Rust. 
I had to use prompt-sync to get the users input.
Installing Node and setting up dependencies was easy.

It's okay.

### C
Fairly simple to write. The input function is a poorly designed. 
You pass your variable in by reference, rather than the function returning your inputted value. 
There is no cross-platform sleep function for some reason?

Compiling with C is annoying. I used `gcc timer.c -o timer.exe;timer.exe` to build and run.
V does this better since you don't need to specify the executable name.

### V 

Had to setup environment variable for it.
Tooling is not very good so there was no language server. Maybe mines just broken?
The code is really nice to write and libraries are clean and easy to use.
It took me a bit to find the documentation for everything.

https://modules.vlang.io/

### Rust

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
