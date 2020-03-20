.global lab1
.syntax unified
#define A #3
#define B #4
#define C #5
//if a*b >= 10 : (a|b)*c if a*b<10:(a&b)*c
lab1: push {r0, r1, r2, r3, r4, lr}
	mov r0, A
	mov r1, B
	mov r2, C
	mul r3, r0, r1
	cmp r3, #10
	ite ge
 	//a|b
	orrGE r4, r0, r1
	//a&b
	andLT r4, r0, r1
	mul r4, r2
	pop {r0, r1, r2, r3, r4, pc}
