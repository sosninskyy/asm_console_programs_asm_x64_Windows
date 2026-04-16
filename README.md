# GNG — GuessNumberGame
# A simple console game written in x64 Assembly (NASM) for Windows
# How it works
- You enter the number of lives.
- You try to guess the secret number.
- The program tells you if your number is higher or lower.

# How to run it
- [Download NASM](https://www.nasm.us/)
- [ Download GCC (MinGW or a similar toolchain)](https://www.mingw-w64.org/downloads/)

Put the .asm file in a folder, open your console, and run:
- nasm -f win64 GNG.asm -o GNG.obj
- gcc GNG.obj -o GNG.exe
