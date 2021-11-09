.text
.global matrix         
         
matrix:
	stmfd sp!, {r0-r12,lr}

	mov	r6,#0 //s									
	mov	r7,#0 //u								
	mov	r8,#0 //v								
	mov	r9,#0 //계산값								
	
Loop:
	mov	r11, #12
	mul	r11,r6,r11							
	add	r11,r11,r7,LSL #2 	

	add	r11,r11,r0							

	ldr	r12,[r11] //a주소계산					

	mov	r11, #12
	mul	r11,r7,r11							
	add	r11,r11,r8,LSL #2				
	add	r11,r11,r1							

	ldr	r11,[r11] //b 주소계산							

	mul	r12,r11,r12						
	add	r9, r9, r12 // 연산
	
	add	r7,r7,#1							
	cmp	r7,r3									 
	bne	Loop
	mov	r7,#0 //r7 = u r3 = index 행렬크기만큼 loop				

												
	mov	r11, #12
	mul	r11,r6,r11		
	add	r11,r11,r8,LSL #2	

	add	r11,r11,r2							

	str	r9, [r11] // c의 주소계산

	mov	r9,#0
	
	add	r8,r8,#1
	cmp	r8, r3								
	bne	Loop

	mov	r8,#0								
	
	add	r6,r6,#1
	cmp	r6,r3									
	bne	Loop	// r8 = v, r6 = s, r3 = index 와 비교하여 loop실행

	ldmfd sp!, {r0-r12,pc}
	
.end
		
		
