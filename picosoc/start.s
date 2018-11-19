# 1 "start.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "start.S"
# 16 "start.S"
# 1 "custom_ops.S" 1
# 17 "start.S" 2

.section .data

.fill 128,4

irq_regs:


        .fill 32,4


        .fill 256,4
irq_stack:

.section .text
 .global irq

reset_vec:


 .word (((0b0000011) << 25) | ((0) << 20) | ((0) << 15) | ((0b110) << 12) | ((0) << 7) | ((0b0001011) << 0))
 j start






.balign 16
irq_vec:




 li x29, 0x03000000
 sw x1, 0(x29)
 sw x2, 0(x29)
 .word (((0b0000000) << 25) | ((0) << 20) | ((0) << 15) | ((0b100) << 12) | ((28) << 7) | ((0b0001011) << 0))
 sw x28, 0(x29)
 .word (((0b0000000) << 25) | ((0) << 20) | ((1) << 15) | ((0b100) << 12) | ((28) << 7) | ((0b0001011) << 0))
 sw x28, 0(x29)
 .word (((0b0000001) << 25) | ((0) << 20) | ((1) << 15) | ((0b010) << 12) | ((2) << 7) | ((0b0001011) << 0))
 .word (((0b0000001) << 25) | ((0) << 20) | ((2) << 15) | ((0b010) << 12) | ((3) << 7) | ((0b0001011) << 0))

 lui x1, %hi(irq_regs)
 addi x1, x1, %lo(irq_regs)



 .word (((0b0000000) << 25) | ((0) << 20) | ((0) << 15) | ((0b100) << 12) | ((2) << 7) | ((0b0001011) << 0))
 sw x2, 0*4(x1)

 .word (((0b0000000) << 25) | ((0) << 20) | ((2) << 15) | ((0b100) << 12) | ((2) << 7) | ((0b0001011) << 0))
 sw x2, 1*4(x1)

 .word (((0b0000000) << 25) | ((0) << 20) | ((3) << 15) | ((0b100) << 12) | ((2) << 7) | ((0b0001011) << 0))
 sw x2, 2*4(x1)
# 94 "start.S"
 sw x3, 3*4(x1)
 sw x4, 4*4(x1)
 sw x5, 5*4(x1)
 sw x6, 6*4(x1)
 sw x7, 7*4(x1)
 sw x8, 8*4(x1)
 sw x9, 9*4(x1)
 sw x10, 10*4(x1)
 sw x11, 11*4(x1)
 sw x12, 12*4(x1)
 sw x13, 13*4(x1)
 sw x14, 14*4(x1)
 sw x15, 15*4(x1)
 sw x16, 16*4(x1)
 sw x17, 17*4(x1)
 sw x18, 18*4(x1)
 sw x19, 19*4(x1)
 sw x20, 20*4(x1)
 sw x21, 21*4(x1)
 sw x22, 22*4(x1)
 sw x23, 23*4(x1)
 sw x24, 24*4(x1)
 sw x25, 25*4(x1)
 sw x26, 26*4(x1)
 sw x27, 27*4(x1)
 sw x28, 28*4(x1)
 sw x29, 29*4(x1)
 sw x30, 30*4(x1)
 sw x31, 31*4(x1)
# 185 "start.S"
 lui sp, %hi(irq_stack)
 addi sp, sp, %lo(irq_stack)



 lui a0, %hi(irq_regs)
 addi a0, a0, %lo(irq_regs)






 .word (((0b0000000) << 25) | ((0) << 20) | ((1) << 15) | ((0b100) << 12) | ((11) << 7) | ((0b0001011) << 0))





 jal ra, irq






 addi x1, a0, 0

 lw x2, 0*4(x1)
 .word (((0b0000001) << 25) | ((0) << 20) | ((2) << 15) | ((0b010) << 12) | ((0) << 7) | ((0b0001011) << 0))

 lw x2, 1*4(x1)
 .word (((0b0000001) << 25) | ((0) << 20) | ((2) << 15) | ((0b010) << 12) | ((1) << 7) | ((0b0001011) << 0))

 lw x2, 2*4(x1)
 .word (((0b0000001) << 25) | ((0) << 20) | ((2) << 15) | ((0b010) << 12) | ((2) << 7) | ((0b0001011) << 0))
# 239 "start.S"
 lw x3, 3*4(x1)
 lw x4, 4*4(x1)
 lw x5, 5*4(x1)
 lw x6, 6*4(x1)
 lw x7, 7*4(x1)
 lw x8, 8*4(x1)
 lw x9, 9*4(x1)
 lw x10, 10*4(x1)
 lw x11, 11*4(x1)
 lw x12, 12*4(x1)
 lw x13, 13*4(x1)
 lw x14, 14*4(x1)
 lw x15, 15*4(x1)
 lw x16, 16*4(x1)
 lw x17, 17*4(x1)
 lw x18, 18*4(x1)
 lw x19, 19*4(x1)
 lw x20, 20*4(x1)
 lw x21, 21*4(x1)
 lw x22, 22*4(x1)
 lw x23, 23*4(x1)
 lw x24, 24*4(x1)
 lw x25, 25*4(x1)
 lw x26, 26*4(x1)
 lw x27, 27*4(x1)
 lw x28, 28*4(x1)
 lw x29, 29*4(x1)
 lw x30, 30*4(x1)
 lw x31, 31*4(x1)


 .word (((0b0000000) << 25) | ((0) << 20) | ((1) << 15) | ((0b100) << 12) | ((1) << 7) | ((0b0001011) << 0))
 .word (((0b0000000) << 25) | ((0) << 20) | ((2) << 15) | ((0b100) << 12) | ((2) << 7) | ((0b0001011) << 0))
# 337 "start.S"
 .word (((0b0000010) << 25) | ((0) << 20) | ((0) << 15) | ((0b000) << 12) | ((0) << 7) | ((0b0001011) << 0))





start:
# zero-initialize register file
addi x1, zero, 0
# x2 (sp) is initialized by reset
addi x3, zero, 0
addi x4, zero, 0
addi x5, zero, 0
addi x6, zero, 0
addi x7, zero, 0
addi x8, zero, 0
addi x9, zero, 0
addi x10, zero, 0
addi x11, zero, 0
addi x12, zero, 0
addi x13, zero, 0
addi x14, zero, 0
addi x15, zero, 0
addi x16, zero, 0
addi x17, zero, 0
addi x18, zero, 0
addi x19, zero, 0
addi x20, zero, 0
addi x21, zero, 0
addi x22, zero, 0
addi x23, zero, 0
addi x24, zero, 0
addi x25, zero, 0
addi x26, zero, 0
addi x27, zero, 0
addi x28, zero, 0
addi x29, zero, 0
addi x30, zero, 0
addi x31, zero, 0

# Update LEDs
li a0, 0x03000000
li a1, 1
sw a1, 0(a0)

# zero initialize entire scratchpad memory
li a0, 0x00000000
setmemloop:
sw a0, 0(a0)
addi a0, a0, 4
#todo: uncomment, in simulation it's painfully slow
#blt a0, sp, setmemloop

# Update LEDs
li a0, 0x03000000
li a1, 3
sw a1, 0(a0)

# copy data section
la a0, _sidata
la a1, _sdata
la a2, _edata
bge a1, a2, end_init_data
loop_init_data:
lw a3, 0(a0)
sw a3, 0(a1)
addi a0, a0, 4
addi a1, a1, 4
blt a1, a2, loop_init_data
end_init_data:

# Update LEDs
li a0, 0x03000000
li a1, 7
sw a1, 0(a0)

# zero-init bss section
la a0, _sbss
la a1, _ebss
bge a0, a1, end_init_bss
loop_init_bss:
sw zero, 0(a0)
addi a0, a0, 4
blt a0, a1, loop_init_bss
end_init_bss:

# Update LEDs
li a0, 0x03000000
li a1, 15
sw a1, 0(a0)

# call main
call main
loop:
j loop

.global flashio_worker_begin
.global flashio_worker_end

.balign 4

flashio_worker_begin:
# a0 ... data pointer
# a1 ... data length
# a2 ... optional WREN cmd (0 = disable)

# address of SPI ctrl reg
li t0, 0x02000000

# Set CS high, IO0 is output
li t1, 0x120
sh t1, 0(t0)

# Enable Manual SPI Ctrl
sb zero, 3(t0)

# Send optional WREN cmd
beqz a2, flashio_worker_L1
li t5, 8
andi t2, a2, 0xff
flashio_worker_L4:
srli t4, t2, 7
sb t4, 0(t0)
ori t4, t4, 0x10
sb t4, 0(t0)
slli t2, t2, 1
andi t2, t2, 0xff
addi t5, t5, -1
bnez t5, flashio_worker_L4
sb t1, 0(t0)

# SPI transfer
flashio_worker_L1:
beqz a1, flashio_worker_L3
li t5, 8
lbu t2, 0(a0)
flashio_worker_L2:
srli t4, t2, 7
sb t4, 0(t0)
ori t4, t4, 0x10
sb t4, 0(t0)
lbu t4, 0(t0)
andi t4, t4, 2
srli t4, t4, 1
slli t2, t2, 1
or t2, t2, t4
andi t2, t2, 0xff
addi t5, t5, -1
bnez t5, flashio_worker_L2
sb t2, 0(a0)
addi a0, a0, 1
addi a1, a1, -1
j flashio_worker_L1
flashio_worker_L3:

# Back to MEMIO mode
li t1, 0x80
sb t1, 3(t0)

ret

.balign 4
flashio_worker_end:
