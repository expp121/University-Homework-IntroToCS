	CLO
	JMP START
	DB 3 	      ; STORE 3 SOMEWHERE IN MEMORY (VARIABLE a)

START:
	MOV AL, [03]  ; TRANSFER THE VALUE OF THE VARIABLE a TO al
	CMP AL, 5	  ; COMPARE THE al REGISTERS VALUE TO FIVE, IF al IS LESS THAN 5, SET S FLAG TO 1
	JNS DISPLAY	  ; JUMP TO DISPLAY IF S FLAG IS 0
	ADD AL, 1	  ; INCREMENT REGISTER al BY 1 BECAUSE OF THE GIVEN TASK
	MOV [03], AL  ; CHANGE THE VALUE OF VARIABLE a 


DISPLAY: 
	ADD AL, 30	  ; CONVERT THE NUMBER INTO ASCII
	MOV [C0], AL  ; TRASFER THE VALUE OF REGISTER al TO ADDRESS c0 WHICH DISPLAYS THE VALUES

	END