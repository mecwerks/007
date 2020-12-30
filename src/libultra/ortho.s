# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel guOrthoF
/* 017670 70016A70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 017674 70016A74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 017678 70016A78 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01767C 70016A7C AFA60020 */  sw    $a2, 0x20($sp)
/* 017680 70016A80 AFA70024 */  sw    $a3, 0x24($sp)
/* 017684 70016A84 0C004004 */  jal   guMtxIdentF
/* 017688 70016A88 AFA40018 */   sw    $a0, 0x18($sp)
/* 01768C 70016A8C C7A40020 */  lwc1  $f4, 0x20($sp)
/* 017690 70016A90 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 017694 70016A94 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 017698 70016A98 44814000 */  mtc1  $at, $f8
/* 01769C 70016A9C 46062001 */  sub.s $f0, $f4, $f6
/* 0176A0 70016AA0 8FA20018 */  lw    $v0, 0x18($sp)
/* 0176A4 70016AA4 C7AE0028 */  lwc1  $f14, 0x28($sp)
/* 0176A8 70016AA8 C7B00030 */  lwc1  $f16, 0x30($sp)
/* 0176AC 70016AAC 46004283 */  div.s $f10, $f8, $f0
/* 0176B0 70016AB0 C7B2002C */  lwc1  $f18, 0x2c($sp)
/* 0176B4 70016AB4 44813000 */  mtc1  $at, $f6
/* 0176B8 70016AB8 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 0176BC 70016ABC 46128301 */  sub.s $f12, $f16, $f18
/* 0176C0 70016AC0 00001825 */  move  $v1, $zero
/* 0176C4 70016AC4 24040004 */  li    $a0, 4
/* 0176C8 70016AC8 E44A0000 */  swc1  $f10, ($v0)
/* 0176CC 70016ACC C7A40024 */  lwc1  $f4, 0x24($sp)
/* 0176D0 70016AD0 44815000 */  mtc1  $at, $f10
/* 0176D4 70016AD4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0176D8 70016AD8 46047081 */  sub.s $f2, $f14, $f4
/* 0176DC 70016ADC 460C5103 */  div.s $f4, $f10, $f12
/* 0176E0 70016AE0 46023203 */  div.s $f8, $f6, $f2
/* 0176E4 70016AE4 E4440028 */  swc1  $f4, 0x28($v0)
/* 0176E8 70016AE8 E4480014 */  swc1  $f8, 0x14($v0)
/* 0176EC 70016AEC C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 0176F0 70016AF0 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 0176F4 70016AF4 46083280 */  add.s $f10, $f6, $f8
/* 0176F8 70016AF8 46005107 */  neg.s $f4, $f10
/* 0176FC 70016AFC 46002183 */  div.s $f6, $f4, $f0
/* 017700 70016B00 E4460030 */  swc1  $f6, 0x30($v0)
/* 017704 70016B04 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 017708 70016B08 46087280 */  add.s $f10, $f14, $f8
/* 01770C 70016B0C 46128200 */  add.s $f8, $f16, $f18
/* 017710 70016B10 46005107 */  neg.s $f4, $f10
/* 017714 70016B14 46004287 */  neg.s $f10, $f8
/* 017718 70016B18 46022183 */  div.s $f6, $f4, $f2
/* 01771C 70016B1C 460C5103 */  div.s $f4, $f10, $f12
/* 017720 70016B20 E4460034 */  swc1  $f6, 0x34($v0)
/* 017724 70016B24 44813000 */  mtc1  $at, $f6
/* 017728 70016B28 00000000 */  nop   
/* 01772C 70016B2C E446003C */  swc1  $f6, 0x3c($v0)
/* 017730 70016B30 E4440038 */  swc1  $f4, 0x38($v0)
/* 017734 70016B34 C7A00034 */  lwc1  $f0, 0x34($sp)
/* 017738 70016B38 C4480000 */  lwc1  $f8, ($v0)
/* 01773C 70016B3C 24630001 */  addiu $v1, $v1, 1
/* 017740 70016B40 C4520004 */  lwc1  $f18, 4($v0)
/* 017744 70016B44 46004302 */  mul.s $f12, $f8, $f0
/* 017748 70016B48 C44E0008 */  lwc1  $f14, 8($v0)
/* 01774C 70016B4C 10640010 */  beq   $v1, $a0, .L70016B90
/* 017750 70016B50 C450000C */   lwc1  $f16, 0xc($v0)
.L70016B54:
/* 017754 70016B54 46009282 */  mul.s $f10, $f18, $f0
/* 017758 70016B58 C4480010 */  lwc1  $f8, 0x10($v0)
/* 01775C 70016B5C C4520014 */  lwc1  $f18, 0x14($v0)
/* 017760 70016B60 46007182 */  mul.s $f6, $f14, $f0
/* 017764 70016B64 C44E0018 */  lwc1  $f14, 0x18($v0)
/* 017768 70016B68 24630001 */  addiu $v1, $v1, 1
/* 01776C 70016B6C 46008102 */  mul.s $f4, $f16, $f0
/* 017770 70016B70 C450001C */  lwc1  $f16, 0x1c($v0)
/* 017774 70016B74 E44C0000 */  swc1  $f12, ($v0)
/* 017778 70016B78 46004302 */  mul.s $f12, $f8, $f0
/* 01777C 70016B7C E44A0004 */  swc1  $f10, 4($v0)
/* 017780 70016B80 E4460008 */  swc1  $f6, 8($v0)
/* 017784 70016B84 24420010 */  addiu $v0, $v0, 0x10
/* 017788 70016B88 1464FFF2 */  bne   $v1, $a0, .L70016B54
/* 01778C 70016B8C E444FFFC */   swc1  $f4, -4($v0)
.L70016B90:
/* 017790 70016B90 46009282 */  mul.s $f10, $f18, $f0
/* 017794 70016B94 24420010 */  addiu $v0, $v0, 0x10
/* 017798 70016B98 E44CFFF0 */  swc1  $f12, -0x10($v0)
/* 01779C 70016B9C 46007182 */  mul.s $f6, $f14, $f0
/* 0177A0 70016BA0 00000000 */  nop   
/* 0177A4 70016BA4 46008102 */  mul.s $f4, $f16, $f0
/* 0177A8 70016BA8 E44AFFF4 */  swc1  $f10, -0xc($v0)
/* 0177AC 70016BAC E446FFF8 */  swc1  $f6, -8($v0)
/* 0177B0 70016BB0 E444FFFC */  swc1  $f4, -4($v0)
/* 0177B4 70016BB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0177B8 70016BB8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0177BC 70016BBC 03E00008 */  jr    $ra
/* 0177C0 70016BC0 00000000 */   nop   

glabel guOrtho
/* 0177C4 70016BC4 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0177C8 70016BC8 44856000 */  mtc1  $a1, $f12
/* 0177CC 70016BCC 44867000 */  mtc1  $a2, $f14
/* 0177D0 70016BD0 44878000 */  mtc1  $a3, $f16
/* 0177D4 70016BD4 C7A40078 */  lwc1  $f4, 0x78($sp)
/* 0177D8 70016BD8 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 0177DC 70016BDC C7A80080 */  lwc1  $f8, 0x80($sp)
/* 0177E0 70016BE0 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 0177E4 70016BE4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0177E8 70016BE8 AFA40068 */  sw    $a0, 0x68($sp)
/* 0177EC 70016BEC 44056000 */  mfc1  $a1, $f12
/* 0177F0 70016BF0 44067000 */  mfc1  $a2, $f14
/* 0177F4 70016BF4 44078000 */  mfc1  $a3, $f16
/* 0177F8 70016BF8 27A40028 */  addiu $a0, $sp, 0x28
/* 0177FC 70016BFC E7A40010 */  swc1  $f4, 0x10($sp)
/* 017800 70016C00 E7A60014 */  swc1  $f6, 0x14($sp)
/* 017804 70016C04 E7A80018 */  swc1  $f8, 0x18($sp)
/* 017808 70016C08 0C005A9C */  jal   guOrthoF
/* 01780C 70016C0C E7AA001C */   swc1  $f10, 0x1c($sp)
/* 017810 70016C10 27A40028 */  addiu $a0, $sp, 0x28
/* 017814 70016C14 0C003FC4 */  jal   guMtxF2L
/* 017818 70016C18 8FA50068 */   lw    $a1, 0x68($sp)
/* 01781C 70016C1C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 017820 70016C20 27BD0068 */  addiu $sp, $sp, 0x68
/* 017824 70016C24 03E00008 */  jr    $ra
/* 017828 70016C28 00000000 */   nop   
