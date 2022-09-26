.data
argument: .word 7

str: .string "th number in the Fibonacci sequence is "


.text
main:
        lw       a0, argument      #load from data,store arg1 in a0
        jal      ra, Fib       # Jump-and-link to the 'gcd' label

        # Print the result to console
        
        mv       a1, a0   #a1 = result
        lw       a0, argument #a0 = 7
        jal      ra, printResult

        # Exit program
        li       a0, 10
        ecall

Fib:
        addi     sp, sp, -16    #call stack, reserve four 4-bytes-register space in stack
        sw       ra, 12(sp)      #store return address
        sw       a0, 8(sp)  #n
        
        beq      a0, zero ,exit0
        li       t0, 1

        beq      a0, t0 ,exit1
       
        addi     a0, a0, -1  #n-1
        jal      ra, Fib
  				sw  a0, 4(sp)
  				lw  a0, 8(sp)  #n

        addi     a0, a0, -2  #n-2
        jal     ra, Fib
        sw  a0, 0(sp)
  
  lw  t0, 4(sp)
  lw  t1, 0(sp)
  add  a0, t0, t1  #a0 = f(n-1)+f(n-2)

  lw  ra, 12(sp)
  addi sp, sp, 16
  jr  ra
            
exit0:  
  addi a0, zero, 0
        addi     sp, sp, 16
        jr       ra       

exit1:
  addi a0, zero, 1
  addi sp, sp, 16
  jr  ra 


# expects:
# a0: Value which factorial number was computed from
# a1: Fibonacci result
printResult:
        mv       t0, a0
				 mv       t1, a1


        mv       a1, t0
        li       a0, 1
        ecall


        la      a1, str
        li       a0, 4
        ecall

        mv       a1, t1
        li       a0, 1
        ecall


        ret