.text

main:
        li $s0, 5 #A
        li $s1, 3 #B
        li $s2, 0 #C
        j C1_COND    #case
        
        
       C1_COND:          #case
        lw    $t1,($s0)
        lw    $t2,($s1)
        lw    $t3,($s2)
        add   $s2,$t1,$t2    #suma c=a+b
        j C2_COND              #case
       C2_COND: 
        lw    $t1,($s0)
        lw    $t2,($s1)
        lw    $t3,($s2)       
        sub   $s2,$t1,$t2      #resta c=a-b
        j C3_COND             #cargar siguiente case
       C3_COND: 
        lw    $t1,($s0)
        lw    $t2,($s1)
        lw    $t3,($s2)  
        mul   $s2,$t1,$t2    #Mul c=a*b
        j C4_COND             #cargar suguiente case
       C4_COND:
        lw    $t1,($s0)
        lw    $t2,($s1)
        lw    $t1,-100($t2)
        andi  $t1,$t2,100    #Div c=a/b
      
        
        
        j   exit                      #salida
        
      
exit:
        
        
          

