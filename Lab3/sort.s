.text
.global sort
.global swap
.type sort, STT_FUNC

sort:  
        sub sp, sp, #24
		str	lr, [sp, #20]
        str r8, [sp, #16] // n-1-i
		str	r7, [sp, #12] // ncopy
		str	r6, [sp, #8] // vcopy
		str r3, [sp, #4] //j
		str	r2, [sp, #0] //i
        
        mov r6 ,r0 // v
        mov r7 ,r1 // n
        sub r1, #1
        mov r2, #0

foritst:
        cmp r2, r1
        bge exit1
        mov r3, #0

for2tst:
        sub r8, r1, r2
        cmp r3, r8
        bge exit2
        add r12 r0, r3 LSL #2
        ldr r4, [r12, #0]
        ldr r5, [r12, #4]
        cmp r4, r5
        ble exit2

        stmdb sp!,{r0, r1, r2, r3, r12}
        mov r0, r6
        mov r1, r3
        bl swap
        ldmia sp!,{r0, r1, r2, r3, r12}

        sub r3, r3 #1
        b for2tst

exit2:
        add r2, r2, #1
        b for1tst
exit1:
        ldr r2, [sp, #0]
        ldr r3, [sp, #4]
        ldr r6, [sp, #8]
        ldr r7, [sp, #12]
        ldr r8, [sp, #16]
        ldr lr, [sp, #20]
        add sp, sp, #24

        mov pc, lr

.end