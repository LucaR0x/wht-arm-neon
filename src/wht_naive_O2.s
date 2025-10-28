	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	__Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE ; -- Begin function _Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE
	.p2align	2
__Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE: ; @_Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	ldp	x8, x9, [x0]
	sub	x10, x9, x8
	lsr	x9, x10, #2
	cmp	w9, #2
	b.lt	LBB0_14
; %bb.1:
	sbfx	x10, x10, #2, #32
	add	x11, x8, #16
	mov	w14, #1                         ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w17, w9
	b.ge	LBB0_14
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
	mov	x12, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
                                        ; kill: def $w14 killed $w14 killed $x14 def $x14
	mov	w15, w14
	sxtw	x16, w14
	ubfiz	x0, x14, #2, #32
	sbfiz	x1, x14, #2, #32
	lsl	w14, w14, #1
	sxtw	x17, w14
	sbfiz	x2, x14, #2, #32
	add	x3, x1, x0
	and	x4, x15, #0xfffffff8
	mov	x5, x16
	mov	x6, x11
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=2
	add	x12, x12, #1
	add	x6, x6, x2
	add	x5, x5, x17
	add	x13, x13, x17
	cmp	x13, x10
	b.ge	LBB0_2
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
	cmp	w16, #1
	b.lt	LBB0_4
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=2
	cmp	w16, #8
	b.lo	LBB0_11
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=2
	mul	x7, x2, x12
	add	x19, x8, x0
	add	x19, x19, x7
	add	x20, x8, x1
	add	x20, x20, x7
	add	x21, x8, x3
	add	x21, x21, x7
	add	x7, x8, x7
	cmp	x7, x21
	ccmp	x20, x19, #2, lo
	b.lo	LBB0_11
; %bb.8:                                ;   in Loop: Header=BB0_5 Depth=2
	mov	x7, x6
	mov	x19, x4
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x7, #-16]
	add	x20, x7, x1
	ldp	q2, q3, [x20, #-16]
	fadd.4s	v4, v0, v2
	fadd.4s	v5, v1, v3
	stp	q4, q5, [x7, #-16]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x20, #-16]
	add	x7, x7, #32
	subs	x19, x19, #8
	b.ne	LBB0_9
; %bb.10:                               ;   in Loop: Header=BB0_5 Depth=2
	mov	x20, x4
	cmp	x4, x15
	b.eq	LBB0_4
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_5 Depth=2
	mov	x20, #0                         ; =0x0
LBB0_12:                                ;   in Loop: Header=BB0_5 Depth=2
	add	x7, x20, x5
	add	x7, x8, x7, lsl #2
	add	x19, x20, x13
	add	x19, x8, x19, lsl #2
	sub	x20, x15, x20
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s0, [x19]
	ldr	s1, [x7]
	fadd	s2, s0, s1
	str	s2, [x19], #4
	fsub	s0, s0, s1
	str	s0, [x7], #4
	subs	x20, x20, #1
	b.ne	LBB0_13
	b	LBB0_4
LBB0_14:
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #2512
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w8, #12                         ; =0xc
	strb	w8, [sp, #23]
	mov	w8, #25710                      ; =0x646e
	movk	w8, #28015, lsl #16
	str	w8, [sp, #8]
Lloh0:
	adrp	x8, l_.str@PAGE
Lloh1:
	add	x8, x8, l_.str@PAGEOFF
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp]
	strb	wzr, [sp, #12]
Ltmp0:
	sub	x0, x29, #20
	mov	x1, sp
	bl	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp1:
; %bb.1:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_3
; %bb.2:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_3:
Ltmp3:
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceclEv
Ltmp4:
; %bb.4:
	str	w0, [sp]
	mov	w8, #1                          ; =0x1
	mov	w9, #35173                      ; =0x8965
	movk	w9, #27655, lsl #16
	mov	x10, sp
LBB1_5:                                 ; =>This Inner Loop Header: Depth=1
	eor	w11, w0, w0, lsr #30
	madd	w0, w11, w9, w8
	str	w0, [x10, x8, lsl #2]
	add	x8, x8, #1
	cmp	x8, #624
	b.ne	LBB1_5
; %bb.6:
Ltmp6:
	mov	w0, #256                        ; =0x100
	bl	__Znwm
Ltmp7:
; %bb.7:
	mov	x8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
	movi.2d	v1, #0000000000000000
	stp	q1, q1, [x0, #224]
	stp	q1, q1, [x0, #192]
	stp	q1, q1, [x0, #160]
	stp	q1, q1, [x0, #128]
	stp	q1, q1, [x0, #96]
	stp	q1, q1, [x0, #64]
	mov	x10, sp
	mov	x11, #3361                      ; =0xd21
	movk	x11, #8402, lsl #16
	movk	x11, #53773, lsl #32
	movk	x11, #3360, lsl #48
	stp	q1, q1, [x0, #32]
	mov	w12, #624                       ; =0x270
	mov	w13, #45279                     ; =0xb0df
	movk	w13, #39176, lsl #16
	mov	w14, #22144                     ; =0x5680
	movk	w14, #40236, lsl #16
	mov	w15, #-272236544                ; =0xefc60000
	mov	w16, #796917760                 ; =0x2f800000
	fmov	s0, #-1.00000000
	stp	q1, q1, [x0]
	fmov	s1, #2.00000000
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x17, x9, #1
	lsl	x1, x9, #2
	cmp	x17, #624
	add	x17, x9, #397
	csinc	x9, xzr, x9, eq
	ldr	w2, [x10, x1]
	ldr	w3, [x10, x9, lsl #2]
	and	w2, w2, #0x80000000
	and	w4, w3, #0x7ffffffe
	lsr	x5, x17, #4
	umulh	x5, x5, x11
	lsr	x5, x5, #1
	orr	w2, w4, w2
	msub	x17, x5, x12, x17
	ldr	w17, [x10, x17, lsl #2]
	eor	w17, w17, w2, lsr #1
	sbfx	w2, w3, #0, #1
	and	w2, w2, w13
	eor	w17, w17, w2
	eor	w2, w17, w17, lsr #11
	and	w3, w14, w2, lsl #7
	eor	w2, w3, w2
	and	w3, w15, w2, lsl #15
	eor	w2, w3, w2
	eor	w2, w2, w2, lsr #18
	ucvtf	s2, w2
	fmov	s3, w16
	str	w17, [x10, x1]
	fmul	s2, s2, s3
	fmadd	s2, s2, s1, s0
	str	s2, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB1_8
; %bb.9:
	str	x9, [sp, #2496]
	mov	x8, x0
	ld2.4s	{ v0, v1 }, [x8], #32
	ld2.4s	{ v2, v3 }, [x8]
	fadd.4s	v4, v0, v1
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x0]
	fadd.4s	v0, v2, v3
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x8]
	ld4.4s	{ v0, v1, v2, v3 }, [x0]
	fadd.4s	v4, v0, v2
	fsub.4s	v6, v0, v2
	fadd.4s	v5, v1, v3
	fsub.4s	v7, v1, v3
	st4.4s	{ v4, v5, v6, v7 }, [x0]
	add	x9, x0, #64
	ld2.4s	{ v0, v1 }, [x9]
	add	x10, x0, #96
	ld2.4s	{ v2, v3 }, [x10]
	fadd.4s	v4, v0, v1
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x9]
	fadd.4s	v0, v2, v3
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x10]
	ld4.4s	{ v0, v1, v2, v3 }, [x9]
	fadd.4s	v4, v0, v2
	fsub.4s	v6, v0, v2
	fadd.4s	v5, v1, v3
	fsub.4s	v7, v1, v3
	st4.4s	{ v4, v5, v6, v7 }, [x9]
	add	x9, x0, #128
	ld2.4s	{ v0, v1 }, [x9]
	add	x10, x0, #160
	ld2.4s	{ v2, v3 }, [x10]
	fadd.4s	v4, v0, v1
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x9]
	fadd.4s	v0, v2, v3
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x10]
	ld4.4s	{ v0, v1, v2, v3 }, [x9]
	fadd.4s	v4, v0, v2
	fsub.4s	v6, v0, v2
	fadd.4s	v5, v1, v3
	fsub.4s	v7, v1, v3
	st4.4s	{ v4, v5, v6, v7 }, [x9]
	add	x9, x0, #192
	ld2.4s	{ v0, v1 }, [x9]
	add	x10, x0, #224
	ld2.4s	{ v2, v3 }, [x10]
	fadd.4s	v4, v0, v1
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x9]
	fadd.4s	v0, v2, v3
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x10]
	ld4.4s	{ v0, v1, v2, v3 }, [x9]
	fadd.4s	v4, v0, v2
	fsub.4s	v6, v0, v2
	fadd.4s	v5, v1, v3
	fsub.4s	v7, v1, v3
	st4.4s	{ v4, v5, v6, v7 }, [x9]
	ldr	s0, [x0]
	ldr	s3, [x0, #16]
	ldr	d4, [x0]
	fadd	s0, s0, s3
	str	s0, [x0]
	ldur	d1, [x0, #4]
	ldur	d2, [x0, #20]
	dup.2s	v0, v2[0]
	mov.s	v0[0], v3[0]
	fsub.2s	v0, v4, v0
	str	d0, [x0, #16]
	fadd.2s	v0, v1, v2
	stur	d0, [x0, #4]
	ldr	s3, [x0, #28]
	ldp	s0, s4, [x0, #8]
	fadd	s5, s4, s3
	str	s5, [x0, #12]
	dup.2s	v1, v1[1]
	mov.s	v1[1], v4[0]
	dup.2s	v2, v2[1]
	mov.s	v2[1], v3[0]
	ldr	q3, [x8]
	ldp	q4, q5, [x0, #48]
	fadd.4s	v6, v3, v4
	fsub.2s	v1, v1, v2
	mov.d	v1[1], v6[0]
	stur	q1, [x0, #24]
	fsub.4s	v1, v3, v4
	ext.16b	v2, v6, v1, #8
	stur	q2, [x0, #40]
	ldp	q2, q3, [x0, #80]
	fadd.4s	v4, v5, v2
	ext.16b	v1, v1, v4, #8
	stur	q1, [x0, #56]
	fsub.4s	v1, v5, v2
	ext.16b	v2, v4, v1, #8
	stur	q2, [x0, #72]
	ldp	q2, q4, [x0, #112]
	fadd.4s	v5, v3, v2
	ext.16b	v1, v1, v5, #8
	stur	q1, [x0, #88]
	fsub.4s	v1, v3, v2
	ext.16b	v2, v5, v1, #8
	stur	q2, [x0, #104]
	ldp	q2, q3, [x0, #144]
	fadd.4s	v5, v4, v2
	ext.16b	v1, v1, v5, #8
	stur	q1, [x0, #120]
	fsub.4s	v1, v4, v2
	ext.16b	v2, v5, v1, #8
	stur	q2, [x0, #136]
	ldp	q2, q4, [x0, #176]
	fadd.4s	v5, v3, v2
	ext.16b	v1, v1, v5, #8
	stur	q1, [x0, #152]
	fsub.4s	v1, v3, v2
	ext.16b	v2, v5, v1, #8
	stur	q2, [x0, #168]
	ldp	q2, q3, [x0, #208]
	fadd.4s	v5, v4, v2
	ext.16b	v1, v1, v5, #8
	stur	q1, [x0, #184]
	fsub.4s	v1, v4, v2
	ext.16b	v2, v5, v1, #8
	stur	q2, [x0, #200]
	ldr	q2, [x0, #240]
	fadd.4s	v4, v3, v2
	ext.16b	v1, v1, v4, #8
	stur	q1, [x0, #216]
	fsub.4s	v1, v3, v2
	ext.16b	v2, v4, v1, #8
	stur	q2, [x0, #232]
	ext.16b	v1, v1, v1, #8
	str	d1, [x0, #248]
	ldr	d7, [x0]
	ldr	d16, [x8]
	fadd.2s	v2, v7, v16
	ldur	q1, [x0, #12]
	dup.2s	v4, v1[0]
	mov.s	v4[0], v0[0]
	ldur	q3, [x0, #44]
	ldr	s5, [x0, #28]
	dup.4s	v17, v1[3]
	mov.s	v17[1], v5[0]
	ldr	s6, [x0, #60]
	fsub.2s	v7, v7, v16
	dup.4s	v16, v3[3]
	mov.s	v16[1], v6[0]
	fadd.2s	v16, v17, v16
	mov.d	v16[1], v7[0]
	stur	q16, [x0, #24]
	ldp	s16, s7, [x0, #36]
	fsub	s0, s0, s7
	dup.2s	v17, v3[0]
	mov.s	v17[0], v7[0]
	fadd.2s	v4, v4, v17
	stp	d2, d4, [x0]
	fadd.4s	v2, v1, v3
	ext.16b	v2, v2, v2, #4
	str	d2, [x0, #16]
	fsub.4s	v1, v1, v3
	stur	q1, [x0, #44]
	fsub	s1, s5, s6
	str	s1, [x0, #60]
	ldr	d1, [x0, #64]
	ldr	d2, [x0, #96]
	fadd.2s	v3, v1, v2
	str	d3, [x0, #64]
	ldr	s3, [x0, #72]
	ldr	s4, [x0, #104]
	fsub	s5, s3, s4
	ldur	q6, [x0, #76]
	ldur	q7, [x0, #108]
	dup.2s	v17, v6[0]
	mov.s	v17[0], v3[0]
	dup.2s	v3, v7[0]
	str	s5, [x0, #104]
	mov.s	v3[0], v4[0]
	fadd.2s	v3, v17, v3
	fadd.4s	v4, v6, v7
	ext.16b	v4, v4, v4, #4
	stp	d3, d4, [x0, #72]
	fsub.4s	v3, v6, v7
	stur	q3, [x0, #108]
	ldr	s3, [x0, #92]
	ldr	s4, [x0, #124]
	dup.4s	v5, v6[3]
	mov.s	v5[1], v3[0]
	dup.4s	v6, v7[3]
	mov.s	v6[1], v4[0]
	fsub.2s	v1, v1, v2
	fadd.2s	v2, v5, v6
	mov.d	v2[1], v1[0]
	stur	q2, [x0, #88]
	fsub	s1, s3, s4
	str	s1, [x0, #124]
	ldr	d1, [x0, #128]
	ldr	d2, [x0, #160]
	fadd.2s	v3, v1, v2
	str	d3, [x0, #128]
	ldr	s3, [x0, #136]
	ldr	s4, [x0, #168]
	fsub	s5, s3, s4
	ldur	q6, [x0, #140]
	ldur	q7, [x0, #172]
	dup.2s	v17, v6[0]
	mov.s	v17[0], v3[0]
	dup.2s	v3, v7[0]
	str	s5, [x0, #168]
	mov.s	v3[0], v4[0]
	fadd.2s	v3, v17, v3
	fadd.4s	v4, v6, v7
	ext.16b	v4, v4, v4, #4
	stp	d3, d4, [x0, #136]
	fsub.4s	v3, v6, v7
	stur	q3, [x0, #172]
	ldr	s3, [x0, #156]
	ldr	s4, [x0, #188]
	dup.4s	v5, v6[3]
	mov.s	v5[1], v3[0]
	dup.4s	v6, v7[3]
	mov.s	v6[1], v4[0]
	fsub.2s	v1, v1, v2
	fadd.2s	v2, v5, v6
	mov.d	v2[1], v1[0]
	stur	q2, [x0, #152]
	fsub	s1, s3, s4
	str	s1, [x0, #188]
	ldr	d1, [x0, #192]
	ldr	d2, [x0, #224]
	fadd.2s	v3, v1, v2
	str	d3, [x0, #192]
	ldr	s3, [x0, #200]
	ldr	s4, [x0, #232]
	fsub	s5, s3, s4
	ldur	q6, [x0, #204]
	ldur	q7, [x0, #236]
	dup.2s	v17, v6[0]
	mov.s	v17[0], v3[0]
	dup.2s	v3, v7[0]
	str	s5, [x0, #232]
	mov.s	v3[0], v4[0]
	add	x10, x0, #116
	add	x9, x0, #196
	fadd.2s	v3, v17, v3
	fadd.4s	v4, v6, v7
	ext.16b	v4, v4, v4, #4
	stp	d3, d4, [x0, #200]
	fsub.4s	v3, v6, v7
	stur	q3, [x0, #236]
	ldr	s3, [x0, #220]
	ldr	s4, [x0, #252]
	dup.4s	v5, v6[3]
	mov.s	v5[1], v3[0]
	dup.4s	v6, v7[3]
	mov.s	v6[1], v4[0]
	fsub.2s	v1, v1, v2
	fadd.2s	v2, v5, v6
	mov.d	v2[1], v1[0]
	stur	q2, [x0, #216]
	fsub	s1, s3, s4
	str	s1, [x0, #252]
	ldp	s1, s2, [x0]
	ldp	s3, s4, [x0, #64]
	fadd	s5, s1, s3
	fsub	s1, s1, s3
	fadd	s3, s2, s4
	stp	s5, s3, [x0]
	fsub	s2, s2, s4
	stp	s1, s2, [x0, #64]
	ldp	s1, s2, [x0, #8]
	ldp	s3, s4, [x0, #72]
	fadd	s5, s1, s3
	fsub	s1, s1, s3
	fadd	s3, s2, s4
	stp	s5, s3, [x0, #8]
	fsub	s2, s2, s4
	stp	s1, s2, [x0, #72]
	ldp	s1, s2, [x0, #16]
	ldp	s3, s4, [x0, #80]
	fadd	s5, s1, s3
	fsub	s1, s1, s3
	fadd	s3, s2, s4
	stp	s5, s3, [x0, #16]
	fsub	s2, s2, s4
	stp	s1, s2, [x0, #80]
	ldp	s1, s2, [x0, #24]
	ldp	s3, s4, [x0, #88]
	fadd	s5, s1, s3
	fsub	s1, s1, s3
	fadd	s3, s2, s4
	stp	s5, s3, [x0, #24]
	fsub	s2, s2, s4
	stp	s1, s2, [x0, #88]
	ldr	s1, [x8]
	ldp	s2, s3, [x0, #96]
	fadd	s4, s1, s2
	str	s4, [x8]
	fsub	s1, s1, s2
	fadd	s2, s16, s3
	stp	s2, s0, [x0, #36]
	fsub	s0, s16, s3
	stp	s1, s0, [x0, #96]
	ldr	s0, [x0, #40]
	ldr	s1, [x0, #104]
	fadd	s2, s0, s1
	str	s2, [x0, #40]
	fsub	s0, s0, s1
	str	s0, [x0, #104]
	ldur	q0, [x0, #44]
	ldur	q1, [x0, #108]
	fsub.4s	v2, v0, v1
	stur	d2, [x0, #108]
	st1.s	{ v2 }[2], [x10]
	fadd.4s	v2, v0, v1
	stur	q2, [x0, #44]
	ldr	s2, [x0, #60]
	ldr	s3, [x0, #124]
	fadd	s4, s2, s3
	str	s4, [x0, #60]
	ldr	d4, [x0, #128]
	ldr	d5, [x0, #192]
	fsub.2s	v6, v4, v5
	dup.4s	v0, v0[3]
	mov.s	v0[1], v2[0]
	str	s6, [x0, #192]
	dup.4s	v1, v1[3]
	mov.s	v1[1], v3[0]
	fadd.2s	v2, v4, v5
	fsub.2s	v0, v0, v1
	mov.d	v0[1], v2[0]
	stur	q0, [x0, #120]
	st1.s	{ v6 }[1], [x9]
	ldp	s0, s1, [x0, #136]
	ldp	s2, s3, [x0, #200]
	fadd	s4, s0, s2
	fsub	s0, s0, s2
	fadd	s2, s1, s3
	stp	s4, s2, [x0, #136]
	fsub	s1, s1, s3
	stp	s0, s1, [x0, #200]
	ldp	s0, s1, [x0, #144]
	ldp	s2, s3, [x0, #208]
	fadd	s4, s0, s2
	fsub	s0, s0, s2
	fadd	s2, s1, s3
	stp	s4, s2, [x0, #144]
	fsub	s1, s1, s3
	stp	s0, s1, [x0, #208]
	ldp	s0, s1, [x0, #152]
	ldp	s2, s3, [x0, #216]
	fadd	s4, s0, s2
	fsub	s0, s0, s2
	fadd	s2, s1, s3
	stp	s4, s2, [x0, #152]
	fsub	s1, s1, s3
	stp	s0, s1, [x0, #216]
	ldp	s0, s1, [x0, #160]
	ldp	s2, s3, [x0, #224]
	fadd	s4, s0, s2
	fsub	s0, s0, s2
	fadd	s2, s1, s3
	stp	s4, s2, [x0, #160]
	fsub	s1, s1, s3
	stp	s0, s1, [x0, #224]
	ldr	s0, [x0, #168]
	ldr	s1, [x0, #232]
	fadd	s5, s0, s1
	fsub	s6, s0, s1
	ldp	s0, s1, [x0, #172]
	ldp	s2, s3, [x0, #236]
	fadd	s4, s0, s2
	fsub	s0, s0, s2
	fadd	s7, s1, s3
	stp	s5, s4, [x0, #168]
	fsub	s5, s1, s3
	stp	s6, s0, [x0, #232]
	ldp	s0, s1, [x0, #180]
	ldp	s2, s3, [x0, #244]
	fadd	s4, s0, s2
	fsub	s0, s0, s2
	fadd	s6, s1, s3
	stp	s7, s4, [x0, #176]
	fsub	s4, s1, s3
	stp	s5, s0, [x0, #240]
	ldr	s0, [x0, #188]
	ldr	s1, [x0, #252]
	fadd	s2, s0, s1
	stp	s6, s2, [x0, #184]
	fsub	s0, s0, s1
	stp	s4, s0, [x0, #248]
	ldp	q0, q1, [x0]
	ldp	q2, q3, [x0, #128]
	fadd.4s	v4, v0, v2
	fadd.4s	v5, v1, v3
	stp	q4, q5, [x0]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x0, #128]
	ldr	q0, [x8]
	ldr	q1, [x0, #48]
	ldp	q2, q3, [x0, #160]
	fadd.4s	v4, v0, v2
	fadd.4s	v6, v1, v3
	str	q4, [x8]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x0, #160]
	ldp	q0, q1, [x0, #64]
	ldp	q2, q3, [x0, #192]
	fadd.4s	v4, v0, v2
	fadd.4s	v7, v1, v3
	stp	q6, q4, [x0, #48]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x0, #192]
	ldp	q0, q1, [x0, #96]
	ldp	q2, q3, [x0, #224]
	fadd.4s	v4, v0, v2
	fadd.4s	v5, v1, v3
	stp	q7, q4, [x0, #80]
	str	q5, [x0, #112]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x0, #224]
	bl	__ZdlPv
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2512
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_10:
Ltmp8:
	b	LBB1_12
LBB1_11:
Ltmp5:
LBB1_12:
	mov	x19, x0
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_13:
Ltmp2:
	mov	x19, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_15
; %bb.14:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_15:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAddLdr	Lloh0, Lloh1, Lloh2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Lfunc_end0-Ltmp7               ;   Call between Ltmp7 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/dev/urandom"

.subsections_via_symbols
