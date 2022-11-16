.data
        array1: .word 1 2 3 4 5    #declaracion de matriz1
        array2: .word 6 7 8 9 10   #declaracion de matriz2
        array3: .word 0 0 0 0 0    #declaracion de matriz3
        
.text

main:  
        la $s1, array1   #matriz1
        la $s2, array2   #matriz2
        la $s3, array3   #matriz3
       
while:                   #declaracion de while
        slti $t1,$s3,5   
        addi $t1,$s3,5   #sumamos la matriz mas5 
        j while          #ejecutamos el while
 
        lw  $t1,($s3)    #cargamos en t1 matriz3
        lw  $t2,($s2)    #cargamos en t1 matriz2
        lw  $t3,($s1)    #cargamos en t1 matriz1
        add $t4,$t2,$t1  #sumamos las matrices
        sw  $t1,-100($t2)  #resultado 
        
exit:  
