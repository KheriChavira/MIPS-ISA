.data
        array1: .word 1 2 3 4 5    #declaracion de matriz 1
        array2: .word 6 7 8 9 10   #declaracion de matriz 2
        array3: .word 0 0 0 0 0    #declaracion de matriz 3
        
.text

main:  
        la $s1, array1   #matriz 1
        la $s2, array2   #matriz 2
        la $s3, array3   #matriz 3
        la $s4, i        #declaracion i
        
        lw  $t0,0($s3)  #carga de dato matriz 3
        add $s4,5(5)  #carga de dato declaracion i
        sw  $t1,$s4($s3) #suma i + matriz 3
        
        lw  $t0,$s1     #carga de dato matriz 1
        lw  $t1,$s2     #carga de dato matriz 2
        lw  $t3,$s3($s4) #carga de dato matriz 3
        add $t1,$t2,$t3  #suma de matrices
        sw  $t4,$s4      #guarda dato 
        
       j exit
 exit      
