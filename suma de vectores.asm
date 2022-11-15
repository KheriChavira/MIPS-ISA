.data
        array1: .word 1 2 3 4 5    #declaracion de matriz1
        array2: .word 6 7 8 9 10   #declaracion de matriz2
        array3: .word 0 0 0 0 0    #declaracion de matriz3
        
.text

main:  
        la $s1, array1   #matriz1
        la $s2, array2   #matriz2
        la $s3, array3   #matriz3
        la $s4, i        #declaracioni
        
        lw  $t0,0($s3)  #carga de dato matriz3
        add $s4,5(5)  #carga de dato declaracioni
        sw  $t1,$s4($s3) #sumai + matriz3
        
        lw  $t0,$s1     #carga de dato matriz1
        lw  $t1,$s2     #carga de dato matriz2
        lw  $t3,$s3($s4) #carga de dato matriz3
        add $t1,$t2,$t3  #suma de matrices
        sw  $t4,$s4      #guarda dato 
        
       j exit
 exit      
