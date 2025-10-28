	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	__Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE ; -- Begin function _Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE
	.p2align	2
__Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE: ; @_Z9wht_naiveRNSt3__16vectorIfNS_9allocatorIfEEEE
	.cfi_startproc
; %bb.0:
	ldp	x8, x9, [x0]
	sub	x10, x9, x8
	lsr	x9, x10, #2
	cmp	w9, #2
	b.lt	LBB0_23
; %bb.1:
	sbfx	x10, x10, #2, #32
	add	x11, x8, #16
	add	x12, x8, #24
	mov	w15, #1                         ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x15, x13
	cmp	w13, w9
	b.ge	LBB0_23
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_18 Depth 2
                                        ;       Child Loop BB0_19 Depth 3
                                        ;       Child Loop BB0_21 Depth 3
                                        ;     Child Loop BB0_14 Depth 2
                                        ;       Child Loop BB0_15 Depth 3
                                        ;     Child Loop BB0_7 Depth 2
	lsl	w13, w15, #1
	cmp	w15, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x14, w13
	mov	w0, w15
	cmp	w15, #7
	b.hi	LBB0_12
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x16, #0                         ; =0x0
	lsl	x17, x0, #2
	lsl	x0, x14, #2
	mov	x1, x12
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	add	x1, x1, x0
	add	x16, x16, x14
	cmp	x16, x10
	b.ge	LBB0_2
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	s0, [x1, #-24]
	add	x2, x1, x17
	ldur	s1, [x2, #-24]
	fadd	s2, s1, s0
	stur	s2, [x1, #-24]
	fsub	s0, s0, s1
	stur	s0, [x2, #-24]
	cmp	w15, #1
	b.eq	LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	ldur	s0, [x1, #-20]
	ldur	s1, [x2, #-20]
	fadd	s2, s1, s0
	stur	s2, [x1, #-20]
	fsub	s0, s0, s1
	stur	s0, [x2, #-20]
	cmp	w15, #2
	b.eq	LBB0_6
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=2
	ldur	s0, [x1, #-16]
	add	x2, x1, x17
	ldp	s1, s2, [x2, #-16]
	fadd	s3, s1, s0
	fsub	s0, s0, s1
	stur	s0, [x2, #-16]
	ldur	s0, [x1, #-12]
	fadd	s1, s2, s0
	stp	s3, s1, [x1, #-16]
	fsub	s0, s0, s2
	stur	s0, [x2, #-12]
	cmp	w15, #4
	b.eq	LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=2
	ldur	s0, [x1, #-8]
	ldp	s1, s2, [x2, #-8]
	fadd	s3, s1, s0
	fsub	s0, s0, s1
	stur	s0, [x2, #-8]
	ldur	s0, [x1, #-4]
	fadd	s1, s2, s0
	stp	s3, s1, [x1, #-8]
	fsub	s0, s0, s2
	stur	s0, [x2, #-4]
	cmp	w15, #6
	b.eq	LBB0_6
; %bb.11:                               ;   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [x1, x17]
	ldr	s1, [x1]
	fadd	s2, s0, s1
	str	s2, [x1]
	fsub	s0, s1, s0
	str	s0, [x1, x17]
	b	LBB0_6
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	and	x15, x0, #0xfffffff8
	subs	x16, x0, x15
	b.ne	LBB0_17
; %bb.13:                               ;   in Loop: Header=BB0_3 Depth=1
	lsl	x17, x14, #2
	lsl	x0, x0, #2
	mov	x1, x11
LBB0_14:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_15 Depth 3
	mov	x2, x1
	mov	x3, x15
LBB0_15:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_14 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x2, #-16]
	add	x4, x2, x0
	ldp	q2, q3, [x4, #-16]
	fadd.4s	v4, v2, v0
	fadd.4s	v5, v3, v1
	stp	q4, q5, [x2, #-16]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x4, #-16]
	add	x2, x2, #32
	subs	x3, x3, #8
	b.ne	LBB0_15
; %bb.16:                               ;   in Loop: Header=BB0_14 Depth=2
	add	x1, x1, x17
	add	x16, x16, x14
	cmp	x16, x10
	b.lt	LBB0_14
	b	LBB0_2
LBB0_17:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x17, #0                         ; =0x0
	lsl	x0, x0, #2
	lsl	x1, x14, #2
	and	x2, x0, #0x3ffffffe0
	add	x2, x8, x2
	mov	x3, x11
LBB0_18:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_19 Depth 3
                                        ;       Child Loop BB0_21 Depth 3
	mov	x4, x3
	mov	x5, x15
LBB0_19:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_18 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x4, #-16]
	add	x6, x4, x0
	ldp	q2, q3, [x6, #-16]
	fadd.4s	v4, v2, v0
	fadd.4s	v5, v3, v1
	stp	q4, q5, [x4, #-16]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x6, #-16]
	add	x4, x4, #32
	subs	x5, x5, #8
	b.ne	LBB0_19
; %bb.20:                               ;   in Loop: Header=BB0_18 Depth=2
	mov	x4, x16
	mov	x5, x2
LBB0_21:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_18 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s0, [x5]
	ldr	s1, [x5, x0]
	fadd	s2, s1, s0
	str	s2, [x5]
	fsub	s0, s0, s1
	str	s0, [x5, x0]
	add	x5, x5, #4
	subs	x4, x4, #1
	b.ne	LBB0_21
; %bb.22:                               ;   in Loop: Header=BB0_18 Depth=2
	add	x3, x3, x1
	add	x2, x2, x1
	add	x17, x17, x14
	cmp	x17, x10
	b.lt	LBB0_18
	b	LBB0_2
LBB0_23:
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
	stp	q1, q1, [x0, #32]
	mov	x11, #3361                      ; =0xd21
	movk	x11, #8402, lsl #16
	movk	x11, #53773, lsl #32
	movk	x11, #3360, lsl #48
	mov	w12, #624                       ; =0x270
	mov	w13, #45279                     ; =0xb0df
	movk	w13, #39176, lsl #16
	mov	w14, #22144                     ; =0x5680
	movk	w14, #40236, lsl #16
	mov	w15, #-272236544                ; =0xefc60000
	movi.2s	v0, #48, lsl #24
	stp	q1, q1, [x0]
	fmov	s1, #-1.00000000
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x16, x9, #1
	cmp	x16, #624
	lsl	x16, x9, #2
	add	x17, x9, #397
	csinc	x9, xzr, x9, eq
	ldr	w1, [x10, x16]
	and	w1, w1, #0x80000000
	ldr	w2, [x10, x9, lsl #2]
	and	w3, w2, #0x7ffffffe
	lsr	x4, x17, #4
	umulh	x4, x4, x11
	orr	w1, w3, w1
	lsr	x3, x4, #1
	msub	x17, x3, x12, x17
	ldr	w17, [x10, x17, lsl #2]
	sbfx	w2, w2, #0, #1
	eor	w17, w17, w1, lsr #1
	and	w1, w2, w13
	eor	w17, w17, w1
	eor	w1, w17, w17, lsr #11
	and	w2, w14, w1, lsl #7
	eor	w1, w2, w1
	and	w2, w15, w1, lsl #15
	eor	w1, w2, w1
	eor	w1, w1, w1, lsr #18
	ucvtf	s2, w1
	str	w17, [x10, x16]
	fmadd	s2, s2, s0, s1
	str	s2, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB1_8
; %bb.9:
	str	x9, [sp, #2496]
	mov	x8, x0
	ld2.4s	{ v0, v1 }, [x8], #32
	ld2.4s	{ v2, v3 }, [x8]
	fadd.4s	v4, v1, v0
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x0]
	fadd.4s	v0, v3, v2
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x8]
	add	x9, x0, #64
	ld2.4s	{ v0, v1 }, [x9]
	add	x10, x0, #96
	ld2.4s	{ v2, v3 }, [x10]
	fadd.4s	v4, v1, v0
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x9]
	fadd.4s	v0, v3, v2
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x10]
	add	x9, x0, #128
	ld2.4s	{ v0, v1 }, [x9]
	add	x10, x0, #160
	ld2.4s	{ v2, v3 }, [x10]
	fadd.4s	v4, v1, v0
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x9]
	fadd.4s	v0, v3, v2
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x10]
	add	x9, x0, #192
	ld2.4s	{ v0, v1 }, [x9]
	add	x10, x0, #224
	ld2.4s	{ v2, v3 }, [x10]
	fadd.4s	v4, v1, v0
	fsub.4s	v5, v0, v1
	st2.4s	{ v4, v5 }, [x9]
	fadd.4s	v0, v3, v2
	fsub.4s	v1, v2, v3
	st2.4s	{ v0, v1 }, [x10]
	ldp	q0, q1, [x0]
	ext.16b	v2, v0, v0, #8
	fadd.4s	v3, v2, v0
	fsub.4s	v0, v2, v0
	mov.d	v3[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v2[1], v0[1]
	stp	q3, q2, [x0]
	ldr	q0, [x8]
	ext.16b	v1, v0, v0, #8
	fadd.4s	v2, v1, v0
	fsub.4s	v0, v1, v0
	mov.d	v2[1], v0[1]
	str	q2, [x8]
	ldp	q0, q1, [x0, #48]
	ext.16b	v2, v0, v0, #8
	fadd.4s	v3, v2, v0
	fsub.4s	v0, v2, v0
	mov.d	v3[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v2[1], v0[1]
	ldp	q0, q1, [x0, #80]
	ext.16b	v4, v0, v0, #8
	fadd.4s	v5, v4, v0
	fsub.4s	v0, v4, v0
	mov.d	v5[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v4, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v4[1], v0[1]
	stp	q3, q2, [x0, #48]
	stp	q5, q4, [x0, #80]
	ldp	q0, q1, [x0, #112]
	ext.16b	v2, v0, v0, #8
	fadd.4s	v3, v2, v0
	fsub.4s	v0, v2, v0
	mov.d	v3[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v2[1], v0[1]
	stp	q3, q2, [x0, #112]
	ldp	q0, q1, [x0, #144]
	ext.16b	v2, v0, v0, #8
	fadd.4s	v3, v2, v0
	fsub.4s	v0, v2, v0
	mov.d	v3[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v2[1], v0[1]
	ldp	q0, q1, [x0, #176]
	ext.16b	v4, v0, v0, #8
	fadd.4s	v5, v4, v0
	fsub.4s	v0, v4, v0
	mov.d	v5[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v4, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v4[1], v0[1]
	stp	q3, q2, [x0, #144]
	stp	q5, q4, [x0, #176]
	ldp	q0, q1, [x0, #208]
	ext.16b	v2, v0, v0, #8
	fadd.4s	v3, v2, v0
	fsub.4s	v0, v2, v0
	mov.d	v3[1], v0[1]
	ext.16b	v0, v1, v1, #8
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	mov.d	v2[1], v0[1]
	stp	q3, q2, [x0, #208]
	ldr	q0, [x0, #240]
	ext.16b	v1, v0, v0, #8
	fadd.4s	v2, v1, v0
	fsub.4s	v0, v1, v0
	mov.d	v2[1], v0[1]
	str	q2, [x0, #240]
	ldur	q0, [x0, #8]
	ldr	d1, [x0]
	ext.16b	v2, v0, v0, #8
	fadd.2s	v2, v2, v1
	str	d2, [x0]
	ldur	q2, [x0, #24]
	mov.d	v1[1], v1[0]
	fadd.4s	v3, v2, v0
	fsub.4s	v1, v1, v0
	mov.d	v3[1], v1[1]
	stur	q3, [x0, #8]
	ldur	q1, [x0, #40]
	fsub.4s	v0, v0, v2
	fadd.4s	v3, v1, v2
	mov.d	v0[1], v3[1]
	stur	q0, [x0, #24]
	ldur	q0, [x0, #56]
	fadd.4s	v3, v0, v1
	fsub.4s	v2, v2, v1
	mov.d	v3[1], v2[1]
	stur	q3, [x0, #40]
	ldur	q2, [x0, #72]
	fsub.4s	v1, v1, v0
	fadd.4s	v3, v2, v0
	mov.d	v1[1], v3[1]
	stur	q1, [x0, #56]
	ldur	q1, [x0, #88]
	fadd.4s	v3, v1, v2
	fsub.4s	v0, v0, v2
	mov.d	v3[1], v0[1]
	stur	q3, [x0, #72]
	ldur	q0, [x0, #104]
	fsub.4s	v2, v2, v1
	fadd.4s	v3, v0, v1
	mov.d	v2[1], v3[1]
	stur	q2, [x0, #88]
	ldur	q2, [x0, #120]
	fadd.4s	v3, v2, v0
	fsub.4s	v1, v1, v0
	mov.d	v3[1], v1[1]
	stur	q3, [x0, #104]
	ldur	q1, [x0, #136]
	fsub.4s	v0, v0, v2
	fadd.4s	v3, v1, v2
	mov.d	v0[1], v3[1]
	stur	q0, [x0, #120]
	ldur	q0, [x0, #152]
	fadd.4s	v3, v0, v1
	fsub.4s	v2, v2, v1
	mov.d	v3[1], v2[1]
	stur	q3, [x0, #136]
	ldur	q2, [x0, #168]
	fsub.4s	v1, v1, v0
	fadd.4s	v3, v2, v0
	mov.d	v1[1], v3[1]
	stur	q1, [x0, #152]
	ldur	q1, [x0, #184]
	fadd.4s	v3, v1, v2
	fsub.4s	v0, v0, v2
	mov.d	v3[1], v0[1]
	stur	q3, [x0, #168]
	ldur	q0, [x0, #200]
	fsub.4s	v2, v2, v1
	fadd.4s	v3, v0, v1
	mov.d	v2[1], v3[1]
	stur	q2, [x0, #184]
	ldur	q2, [x0, #216]
	fadd.4s	v3, v2, v0
	fsub.4s	v1, v1, v0
	mov.d	v3[1], v1[1]
	stur	q3, [x0, #200]
	ldur	q1, [x0, #232]
	fsub.4s	v0, v0, v2
	fadd.4s	v3, v1, v2
	mov.d	v0[1], v3[1]
	stur	q0, [x0, #216]
	ldr	d0, [x0, #248]
	fadd.4s	v3, v0, v1
	fsub.4s	v2, v2, v1
	mov.d	v3[1], v2[1]
	stur	q3, [x0, #232]
	fsub.2s	v0, v1, v0
	str	d0, [x0, #248]
	ldr	s2, [x0, #8]
	ldur	q0, [x0, #24]
	ldr	d3, [x0]
	ldr	q1, [x0, #48]
	dup.2d	v4, v1[1]
	mov.d	v5[1], v3[0]
	fadd.4s	v4, v4, v0
	fsub.4s	v5, v5, v0
	mov.d	v4[1], v5[1]
	stur	q4, [x0, #24]
	ldp	s5, s4, [x0, #36]
	fadd	s6, s4, s2
	str	s6, [x0, #8]
	fsub	s7, s2, s4
	ldur	q16, [x0, #88]
	ldr	d17, [x0, #64]
	ldr	q18, [x0, #112]
	dup.2d	v2, v18[1]
	mov.d	v4[1], v17[0]
	fadd.4s	v2, v2, v16
	fsub.4s	v4, v4, v16
	mov.d	v2[1], v4[1]
	stur	q2, [x0, #88]
	ldp	s4, s2, [x0, #96]
	fadd	s6, s2, s5
	str	s7, [x0, #40]
	ldr	s19, [x0, #20]
	ext.16b	v7, v0, v0, #8
	fadd.2s	v3, v7, v3
	str	d3, [x0]
	ldur	d20, [x0, #12]
	dup.2s	v21, v1[0]
	ldp	s3, s7, [x0, #40]
	mov.s	v21[0], v7[0]
	fsub	s7, s20, s7
	fadd.2s	v21, v21, v20
	stur	d21, [x0, #12]
	mov	s21, v1[1]
	fadd	s21, s21, s19
	str	s21, [x0, #20]
	dup.2d	v0, v0[0]
	mov.s	v0[0], v20[1]
	mov.s	v0[1], v19[0]
	fsub.4s	v0, v0, v1
	str	q0, [x0, #48]
	ldr	s0, [x0, #72]
	ldp	s1, s19, [x0, #104]
	fadd	s20, s1, s0
	str	s20, [x0, #72]
	fsub	s0, s0, s1
	ldr	s1, [x0, #84]
	ext.16b	v20, v16, v16, #8
	fadd.2s	v17, v20, v17
	str	d17, [x0, #64]
	ldur	d17, [x0, #76]
	fsub	s20, s17, s19
	stp	s0, s20, [x0, #104]
	dup.2s	v0, v18[0]
	mov.s	v0[0], v19[0]
	fadd.2s	v0, v0, v17
	stur	d0, [x0, #76]
	mov	s0, v18[1]
	fadd	s0, s0, s1
	dup.2d	v16, v16[0]
	mov.s	v16[0], v17[1]
	mov.s	v16[1], v1[0]
	str	s0, [x0, #84]
	fsub.4s	v0, v16, v18
	str	q0, [x0, #112]
	ldr	s0, [x0, #136]
	ldp	s1, s16, [x0, #168]
	fadd	s17, s1, s0
	str	s17, [x0, #136]
	fsub	s0, s0, s1
	ldr	s1, [x0, #148]
	ldur	q17, [x0, #152]
	ldr	d18, [x0, #128]
	ext.16b	v19, v17, v17, #8
	fadd.2s	v19, v19, v18
	str	d19, [x0, #128]
	ldr	q19, [x0, #176]
	ldur	d20, [x0, #140]
	fsub	s21, s20, s16
	stp	s0, s21, [x0, #168]
	dup.2s	v0, v19[0]
	mov.s	v0[0], v16[0]
	fadd.2s	v0, v0, v20
	stur	d0, [x0, #140]
	mov	s0, v19[1]
	fadd	s0, s0, s1
	dup.2d	v16, v19[1]
	mov.d	v18[1], v18[0]
	fadd.4s	v16, v16, v17
	fsub.4s	v18, v18, v17
	mov.d	v16[1], v18[1]
	str	s0, [x0, #148]
	stur	q16, [x0, #152]
	dup.2d	v0, v17[0]
	mov.s	v0[0], v20[1]
	mov.s	v0[1], v1[0]
	fsub.4s	v0, v0, v19
	str	q0, [x0, #176]
	ldr	s0, [x0, #200]
	ldp	s1, s16, [x0, #232]
	fadd	s17, s1, s0
	str	s17, [x0, #200]
	fsub	s0, s0, s1
	ldur	q1, [x0, #216]
	ldr	d17, [x0, #192]
	ext.16b	v18, v1, v1, #8
	fadd.2s	v18, v18, v17
	str	d18, [x0, #192]
	ldr	q18, [x0, #240]
	ldur	d19, [x0, #204]
	fsub	s20, s19, s16
	stp	s0, s20, [x0, #232]
	dup.2s	v0, v18[0]
	mov.s	v0[0], v16[0]
	ldr	s16, [x0, #212]
	fadd.2s	v0, v0, v19
	stur	d0, [x0, #204]
	mov	s0, v18[1]
	fadd	s0, s0, s16
	str	s0, [x0, #212]
	dup.2d	v0, v18[1]
	mov.d	v17[1], v17[0]
	fadd.4s	v0, v0, v1
	fsub.4s	v17, v17, v1
	mov.d	v0[1], v17[1]
	dup.2d	v1, v1[0]
	mov.s	v1[0], v19[1]
	stur	q0, [x0, #216]
	mov.s	v1[1], v16[0]
	fsub.4s	v0, v1, v18
	str	q0, [x0, #240]
	ldp	s0, s1, [x0]
	ldp	s16, s17, [x0, #64]
	fadd	s18, s16, s0
	fsub	s0, s0, s16
	fadd	s16, s17, s1
	stp	s18, s16, [x0]
	fsub	s1, s1, s17
	stp	s0, s1, [x0, #64]
	ldr	s0, [x0, #8]
	ldr	s1, [x0, #72]
	fadd	s19, s1, s0
	fsub	s0, s0, s1
	str	s0, [x0, #72]
	ldp	s0, s1, [x0, #12]
	ldp	s16, s17, [x0, #76]
	fadd	s18, s16, s0
	fsub	s0, s0, s16
	fadd	s22, s17, s1
	stp	s19, s18, [x0, #8]
	fsub	s1, s1, s17
	stp	s0, s1, [x0, #76]
	ldr	s0, [x0, #20]
	ldr	s1, [x0, #84]
	fadd	s16, s1, s0
	stp	s22, s16, [x0, #16]
	fsub	s0, s0, s1
	str	s0, [x0, #84]
	ldp	s0, s1, [x0, #24]
	ldp	s16, s17, [x0, #88]
	fadd	s18, s16, s0
	fsub	s0, s0, s16
	fadd	s16, s17, s1
	stp	s18, s16, [x0, #24]
	fsub	s1, s1, s17
	stp	s0, s1, [x0, #88]
	ldr	s0, [x8]
	fadd	s1, s4, s0
	str	s1, [x8]
	add	x8, x0, #200
	fsub	s0, s0, s4
	fsub	s1, s5, s2
	stp	s0, s1, [x0, #96]
	ldp	s0, s1, [x0, #104]
	fadd	s2, s0, s3
	str	s7, [x0, #44]
	stp	s6, s2, [x0, #36]
	fsub	s0, s3, s0
	ldr	s2, [x0, #44]
	fadd	s3, s1, s2
	str	s3, [x0, #44]
	fsub	s1, s2, s1
	stp	s0, s1, [x0, #104]
	ldp	s0, s1, [x0, #112]
	ldr	d2, [x0, #192]
	ldur	q3, [x0, #120]
	ldr	q4, [x0, #48]
	fsub	s5, s4, s0
	mov	s6, v4[1]
	fsub	s6, s6, s1
	stp	s5, s6, [x0, #112]
	dup.2d	v5, v3[0]
	mov.s	v5[0], v0[0]
	mov.s	v5[1], v1[0]
	fadd.4s	v0, v5, v4
	str	q0, [x0, #48]
	dup.2d	v0, v4[1]
	mov.d	v1[1], v2[0]
	fsub.4s	v0, v0, v3
	fadd.4s	v1, v1, v3
	mov.d	v0[1], v1[1]
	stur	q0, [x0, #120]
	ldr	d0, [x0, #136]
	ldr	d1, [x0, #200]
	ext.16b	v3, v3, v3, #8
	mov.d	v3[1], v0[0]
	mov.d	v2[1], v1[0]
	fsub.4s	v2, v3, v2
	st1.s	{ v2 }[2], [x8]
	str	d2, [x0, #192]
	fadd.2s	v0, v1, v0
	str	d0, [x0, #136]
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
	mov	x19, x0
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_11:
Ltmp5:
	mov	x19, x0
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_12:
Ltmp2:
	mov	x19, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_14
; %bb.13:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_14:
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
