.text

main:
        li $s0,5 #A
        li $s1,3 #B
        li $t0,$s2,0 #C
        j C1_COND
        jal resultado
        
       C1_COND: SUMA
        addi   $s0,$s1,$s2     #suma
        jal resultado
        j C2_COND 
       C2_COND: RESTA
        sub   $s0,$s1,$s2     #resta
         jal resultado
        j C3_COND
       C3_COND: MUL
        mul   $s0,$s1,$s2     #Mul
         jal resultado
        j C4_COND
       C4_COND: DIV
       andi       $s0,$s1,$s2     #Div
               jal resultado
        j   exit
      
exit        
        
        
        
        
          

