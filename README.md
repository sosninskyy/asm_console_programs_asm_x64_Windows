# GNG - GuessNumberGame
# Simply console game on assembler x64 NASM Windows 
How it works
- You enter the count of lifes in game
- You try to guess the number
- Programm write is your number bigger or lower
## How to execute it
- [Download the NASM](https://www.nasm.us/)
- [Download the gcc from MINGW or something like that](https://www.mingw-w64.org/downloads/)
- Put asm file in folder and open console, enter this: "nasm -f win64 GNG.asm -o GNG.obj", "gcc GNG.obj -o GNG.exe"
