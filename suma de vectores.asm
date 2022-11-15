.data
        array1: .word 1 2 3 4 5
        array2: .word 6 7 8 9 10
        array3: .word 0 0 0 0 0
        
.text

main:  
        la $s1, array1
        la $s2, array2
        la $s3, array3
        la $s4, i
        
        lw  $t0,0($s3)
        add $s4,5($s3)
        sw  $t1,$s4($s3)
        
        lw  $t0,$s1
        lw  $t1,$s2
        lw  $t3,$s3($s4)
        add $t1,$t2,$t3
        sw  $t3,$s4
        
        j exit
        
        
    
        
             
