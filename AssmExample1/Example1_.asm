; extern "C" int CalcResult1_(int val1, int val2, int* quo, int* rem);

	.code
CalcResult1_ proc
	mov r10d,ecx				;r10d = val1
	mov r11d,edx				;r11d = val2

	mov eax, ecx				;eax = val1
	cdq							;edx:eax = val1
	idiv r11d					;calc val1 / val2
	mov dword ptr [r8],eax		;save quotient
	mov dword ptr [r9],edx		;save remainder
	imul r10d, r11d 			;r10d = val1 * val2
	mov eax, r10d				;eax = val1 * val2
	ret
CalcResult1_ endp
end