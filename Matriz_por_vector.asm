.data
	M1: .word 1, 2, 3
	M2: .word 4, 5, 6
	M3: .word 7, 8, 9
	V:  .word 3, 5, 7
	R: .word 0, 0, 0
	
.text
	# Cargar instrucciones
	lui $at, 0x00001001
	ori $s1, $at, 0x00000000 # M1
	lui $at, 0x00001001
	ori $s2, $at, 0x0000000c # M2
	lui $at, 0x00001001
	ori $s3, $at, 0x00000018 # M3
	lui $at, 0x00001001
	ori $s4, $at, 0x00000024 # V
	lui $at, 0x00001001
	ori $s5, $at, 0x00000030 # R
	
	# R[0]
	lw $t0, 0($s1) # 1
	lw $t1, 0($s4) # 3
	mul $t2, $t1, $t0 # 1x3=3
	lw $t3, 0($s5) # 0
	add $t3, $t2, $t3 # 0+3=3
	sw $t3, 0($s5)
	
	lw $t0, 4($s1) # 2
	lw $t1, 4($s4) # 5
	mul $t2, $t1, $t0 # 2x5=10
	lw $t3, 0($s5) # 3
	add $t3, $t2, $t3 # 3+10=13
	sw $t3, 0($s5)
	
	lw $t0, 8($s1) # 3
	lw $t1, 8($s4) # 7
	mul $t2, $t1, $t0 # 3x7=21
	lw $t3, 0($s5) # 13
	add $t3, $t2, $t3 # 13+21=34
	sw $t3, 0($s5)
	
	# R[1]
	lw $t0, 0($s2) # 4
	lw $t1, 0($s4) # 3
	mul $t2, $t1, $t0 # 4x3=12
	lw $t3, 4($s5) # 0
	add $t3, $t2, $t3 # 0+12=12
	sw $t3, 4($s5)
	
	lw $t0, 4($s2) # 5
	lw $t1, 4($s4) # 5
	mul $t2, $t1, $t0 # 5x5=25
	lw $t3, 4($s5) # 12
	add $t3, $t2, $t3 # 12+25=37
	sw $t3, 4($s5)
	
	lw $t0, 8($s2) # 6
	lw $t1, 8($s4) # 7
	mul $t2, $t1, $t0 # 6x7=42
	lw $t3, 4($s5) # 37
	add $t3, $t2, $t3 # 37+42=79
	sw $t3, 4($s5)
	
	# R[2]
	lw $t0, 0($s3) # 7
	lw $t1, 0($s4) # 3
	mul $t2, $t1, $t0 # 7x3=21
	lw $t3, 8($s5) # 0
	add $t3, $t2, $t3 # 0+21=21
	sw $t3, 8($s5)
	
	lw $t0, 4($s3) # 8
	lw $t1, 4($s4) # 5
	mul $t2, $t1, $t0 # 8x5=40
	lw $t3, 8($s5) # 21
	add $t3, $t2, $t3 # 21+40=61
	sw $t3, 8($s5)
	
	lw $t0, 8($s3) # 9
	lw $t1, 8($s4) # 7
	mul $t2, $t1, $t0 # 9x7=63
	lw $t3, 8($s5) # 61
	add $t3, $t2, $t3 # 61+63=124
	sw $t3, 8($s5)