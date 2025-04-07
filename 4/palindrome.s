.intel_syntax noprefix
.text
.global est_palindrome 
.type est_palindrome , @function

est_palindrome: PUSH RBP
                MOV RBP , RSP
                MOV RSI , 0
                MOV RDX , 0
                MOV RAX , 0
loop_j:         INC RDX
                CMP byte ptr[RDI+RDX],0
                JNE loop_j
                DEC RDX
loop:           MOV CL , byte ptr[RDI+RSI]
                CMP CL , byte ptr[RDI+RDX]
                JNE end
                INC RSI
                DEC RDX
                CMP RDX,RSI
                JA loop
                INC AL
end:            POP RBP
                RET
