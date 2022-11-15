.text

main:
        li $s0,5 #A
        li $s1,3 #B
        li $t0,$s2,0 #C
        j C1_COND    #case
        jal resultado
        
       C1_COND: SUMA           #case
        add   $t0,$s0,$s1,$s2     #suma c=a+b
        jal resultado          #resultado
        j C2_COND              #case
       C2_COND: RESTA
        sub   $t1,$s0,$s1,$s2     #resta c=a-b
         jal resultado        #resultado
        j C3_COND             #cargar siguiente case
       C3_COND: MUL
        mul   $t2,$s0,$s1,$s2     #Mul c=a*b
         jal resultado
        j C4_COND             #cargar suguiente case
       C4_COND: DIV
       andi       $t3,$s0,$s1,$s2     #Div c=a/b
               jal resultado
        j   exit                      #salida
      
exit        
        
        
        
        
          

