; extern "C" int IntegerAddSub_(int a, int b, int c, int d);

	.code
IntegerAddSub_ proc

; Calculate a + b + c - d
	mov eax, ecx			;eax = a
	add eax, edx			;eax = a + b
	add eax, r8d			;eax = a + b + c
	sub eax, r9d			;eax = a + b + c - d
	;x86-64 function must use register EAX to return a single 32-bit integer
	ret						;return result to caller
IntegerAddSub_ endp
	end