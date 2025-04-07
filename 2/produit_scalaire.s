.intel_syntax noprefix
.text
.global produit_scalaire
.type produit_scalaire , @function
/ convention pour définir une fonction

produit_scalaire:
                    PUSH RBP
                    MOV RBP , RSP
                    PUSH R12
                    MOV R12,0
                    MOV R8 , RDX  
loop:               MOV AX,0
                    MOV AL , byte ptr[RDI + R8 ]
                    IMUL byte ptr[RSI + R8]
                    ADD R12W , AX
                    DEC R8
                    JNS loop
                MOV AL, R12B
                POP R12 
                POP RBP
                RET







