### Goals
I really want to get to the bottom of the language war. 
Why are there so many languages? 
Which ones are good or bad?

To determine this I will create the same project multiple times in different langauges.

The program must be simple and have a GUI.

A timer seems like a good fit.

### Languages

- Dynamic
  - Python
  - JavaScript
  - Lua

- Compiled
  - Rust
  - C++
  - C
  - V
  - Go
  - Nim

- Bytecode
  - Java
  - Kotlin
  - C#

- Functional
  - Elm
  - ReasonML  

### Python
Python is simple as long as you don't require any dependencies.
Just run `python timer.py`.


### Lua
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
Install Node and setting up dependencies was easy.

It's okay.