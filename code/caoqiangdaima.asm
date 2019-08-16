lui $0,0xffff
ori $16,$0,4
ori $17,$16,1
lui $18,0x1234
ori $18,$18,0x5678
sw $18,-4($16)
lw $19,-4($16)
sw $19,0($16)
beq $18,$19,label
nop
ori $1,$1,1
label:
addu $19,$19,$18
beq $18,$19,label
nop
jal label2
nop 
j label3
addu $19,$18,$31
label2:
subu $19,$19,$31
jr $31

label3:
jal label4
addu $20,$31,$31
addu $21,$20,$20

label4:
jal label5
sw $31,0($16)
addu $21,$20,$20

label5:
jal label6
addu $20,$19,$19

label6:
addu $20,$20,$31
jal label7
addu $20,$19,$19

label7:
addu $21,$20,$20
addu $20,$20,$31
jal label8
addu $20,$20,$20

label8:
sw $31,0($16)
jal label9
addu $20,$20,$20

label9:
addu $20,$20,$20
sw $31,0($0)

lui $22,1
ori $22,$22,1
nop
nop
nop
lui $23,1
ori $23,$23,1
beq $22,$23,label10
addu $8,$22,$23
addu $9,$8,$8

label10:
lui $9,1
ori $9,$9,1
addu $8,$22,$23
beq $22,$9,label11
addu $8,$22,$23
addu $9,$8,$8

label11:
lui $10,1
ori $10,$10,1
addu $8,$22,$23
addu $8,$22,$23
beq $22,$10,label12
addu $8,$22,$23
addu $9,$8,$8

label12:
lui $8,1
addu $9,$9,$9
ori $8,$8,1

subu $8,$8,$8
nop
nop
nop
ori $8,$8,40
addu $9,$9,$9
addu $9,$9,$9
sw $9,0($8)

lui $8,1
ori $8,$8,1
sw $8,0($16)

lui $8,1
ori $8,$8,1
addu $9,$9,$9
sw $8,0($16)

lui $8,1
ori $8,$8,1
addu $9,$9,$9
addu $9,$9,$9
sw $8,0($16)

lw $12,0($16)
beq $12,$22,l1
addu $9,$9,$9
addu $9,$9,$9

l1:
lw $11,0($16)
addu $9,$9,$9
beq $11,$22,l2
addu $9,$9,$9

l2:
subu $11,$11,$11
nop
nop
nop
lw $11,0($16)
addu $9,$9,$9
addu $9,$9,$9
beq $11,$22,l3
addu $9,$9,$9

l3:
subu $11,$11,$11
nop
nop
nop
lw $11,0($16)
addu $12,$11,$11

lw $11,8($16)
addu $9,$9,$9
sw $12,4($11)

subu $11,$11,$11
nop
nop
nop
lw $11,0($16)
addu $9,$9,$9
addu $9,$9,$9
addu $12,$12,$11

subu $11,$11,$11
nop
nop
nop
lw $11,0($16)
sw $11,12($16)

subu $11,$11,$11
nop
nop
nop
lw $11,0($16)
addu $9,$9,$9
sw $11,12($16)

subu $11,$11,$11
nop
nop
nop
lw $11,0($16)
addu $9,$9,$9
addu $9,$9,$9
sw $11,12($16)







