n = 4
m = 5
size = 4
nxsize = 16

				.data
m1:				.word	1,1,1,1,1
				.word	2,2,2,2,2
				.word	3,3,3,3,3
				.word	4,4,4,4,4
				
m2:				.word	0,0,0,0
				.word	0,0,0,0
				.word	0,0,0,0
				.word	0,0,0,0
				.word	0,0,0,0
				
				.text

main:			la		$s1, m1
				la		$s2, m2
				move	$t0, $zero
				li		$t2, size
				li		$t3, m
				li		$t5, n
				li		$s4, 0
				li		$s5, 16
				li		$t6, 4

				
				
bucle1:			move	$t1, $zero
				

				
bucle2:			mul		$t4, $t0, $t3
				addu	$t4, $t4, $t1
				mul		$t4, $t4, $t2
				addu	$t4, $t4, $s1
				lw		$t4, 0($t4)			#carga en $t4 el valor que se quiere poner en la otra matriz
				
				
				sw		$t4, m2($s4)		#carga $t4 en m2 con el desface
				addu	$s4, $s4, $s5		#suma a $s4 16 y lo carga en $s4
				
				
				
				
				
				
				
				addi	$t1, $t1, 1			#suma al indice $t1 1
				blt		$t1, m, bucle2		#si $t1 es menor
				
				move	$s4, $zero				#pone $s4 a 0
				addu	$s4, $s4, $t6		#suma a $s4 4
				addi	$t6, $t6, 4		#suma a $t6 $t6
				
				
				addi	$t0, $t0, 1
				blt		$t0, n, bucle1


				
				li$v0,10
				syscall