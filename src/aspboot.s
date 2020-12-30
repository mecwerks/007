# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"
glabel aspMainTextStart
.incbin "/bin/aspboot.text.bin"
glabel aspMainTextEnd

.section .data
glabel aspMainDataStart
.incbin "/bin/aspboot.data.bin"
glabel aspMainDataEnd
