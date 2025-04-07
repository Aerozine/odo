.intel_syntax noprefix
.text
.global fibonacci
.type fibonacci , @function

fibonacci:  PUSH RBP
            MOV RBP,RSP
            MOV RDX , 0
            MOV RSI , 1
            MOV RAX , 0
            MOV RCX , 1
loop:       MOV EAX,EDX
            ADD EAX,ESI
            MOV EDX,ESI 
            MOV ESI,EAX
            INC ECX
            CMP ECX,EDI
            JB loop
            POP RBP
            RET

