You can run it on your Android phone using [Termux](https://termux.dev/en/).

In Termux:
``` bash
git clone https://github.com/TerrellAW/HelloStack.git
cd HelloStack
as -o stack.o stack.s
ld -o stack stack.o
```

The `as` command assembles the binary and the `ld` commands links it to system libraries so it can be run as an executable. If running either of those commands gives you trouble, simply install the dependencies Termux prompts you to install.

Next, to run and code and see its output:
``` bash
./stack
echo $?
```

Since this is an incredibly simple assembly program, all it does is return an exit code. The only way to see that the program ran is it use `echo $?` to see the exit code of the previously run command (in this case, `./start`).
