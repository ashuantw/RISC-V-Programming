# RISC-V-Programming
### use RISC-V simulator - Ripes to simulate the programs
generate the assembly codes for “bubble_sort.c”, “gcd.c”, “fibonacci.c” correspond to “bubble_sort.s”, “gcd.s”, “fibonacci.s”
### feedback
我之前在打 c code的時候，雖然很知道如何利用迴圈下去跑程式，可是 assembly code讓我更了解迴圈實際上是怎麼跑的，還有他的 stack中的變數是如何存取的。

一開始我以為 assembly code 可以用網路上的 generator直接翻譯就可以運作，但後來發現網路上的不是語法不通，就是會漏寫一些 function，所以還是要真的理解 stack是如何存取，還有 stack pointer指向
的位置，還有 jal是跳回 到 哪 一 個確切位置， register address被存在哪個位置，
這些都必須要理解才有辦法寫出可以執行的 assembly code。

https://github.com/mortbopet/Ripes/tree/master/docs
