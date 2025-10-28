	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE ; -- Begin function _Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	.p2align	2
__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE: ; @_Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	ldp	x9, x8, [x0]
	sub	x9, x8, x9
	lsr	x8, x9, #2
	cmp	w8, #2
	b.lt	LBB0_18
; %bb.1:
	sbfx	x9, x9, #2, #32
	mov	w13, #1                         ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w17, w8
	b.ge	LBB0_18
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_8 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
                                        ;       Child Loop BB0_17 Depth 3
	mov	x10, #0                         ; =0x0
	mov	x11, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
                                        ; kill: def $w13 killed $w13 killed $x13 def $x13
	mov	w14, w13
	sxtw	x15, w13
	ubfiz	x16, x13, #2, #32
	sbfiz	x1, x13, #2, #32
	lsl	w13, w13, #1
	sxtw	x17, w13
	sbfiz	x2, x13, #2, #32
	add	x3, x15, x14
	lsl	x3, x3, #2
	mov	x4, x15
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=2
	add	x11, x11, #1
	add	x10, x10, x2
	add	x4, x4, x17
	add	x12, x12, x17
	cmp	x12, x9
	b.ge	LBB0_2
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_8 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
                                        ;       Child Loop BB0_17 Depth 3
	cmp	w15, #4
	b.ge	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=2
	mov	x19, #0                         ; =0x0
	cmp	w19, w14
	b.ge	LBB0_4
	b	LBB0_10
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=2
	mov	x6, #0                          ; =0x0
	mov	x5, x10
LBB0_8:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x7, x6, #4
	ldr	x19, [x0]
	add	x19, x19, x5
	ldr	q0, [x19, x1]
	ldr	q1, [x19]
	fadd.4s	v2, v1, v0
	fsub.4s	v0, v1, v0
	str	q2, [x19]
	ldr	x19, [x0]
	add	x19, x19, x1
	str	q0, [x19, x5]
	add	x5, x5, #16
	add	x19, x6, #8
	mov	x6, x7
	cmp	x19, x15
	b.le	LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_5 Depth=2
	and	x19, x7, #0xffffffff
	cmp	w19, w14
	b.ge	LBB0_4
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=2
	ldr	x5, [x0]
	sub	x6, x14, x19
	cmp	x6, #8
	b.lo	LBB0_15
; %bb.11:                               ;   in Loop: Header=BB0_5 Depth=2
	mul	x7, x2, x11
	add	x21, x12, x19
	add	x20, x5, x21, lsl #2
	add	x22, x16, x7
	add	x22, x5, x22
	add	x23, x12, x15
	add	x23, x23, x19
	add	x23, x5, x23, lsl #2
	add	x7, x3, x7
	add	x7, x5, x7
	cmp	x20, x7
	ccmp	x23, x22, #2, lo
	b.lo	LBB0_15
; %bb.12:                               ;   in Loop: Header=BB0_5 Depth=2
	and	x20, x6, #0xfffffffffffffff8
	add	x7, x20, x19
	add	x22, x5, #16
	add	x21, x22, x21, lsl #2
	add	x23, x4, x19
	mov	x19, x20
	add	x22, x22, x23, lsl #2
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x21, #-16]
	ldp	q2, q3, [x22, #-16]
	fadd.4s	v4, v0, v2
	fadd.4s	v5, v1, v3
	stp	q4, q5, [x21, #-16]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x22, #-16]
	add	x21, x21, #32
	add	x22, x22, #32
	subs	x19, x19, #8
	b.ne	LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_5 Depth=2
	cmp	x6, x20
	b.eq	LBB0_4
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_5 Depth=2
	mov	x7, x19
LBB0_16:                                ;   in Loop: Header=BB0_5 Depth=2
	add	x6, x7, x4
	add	x6, x5, x6, lsl #2
	add	x19, x7, x12
	add	x5, x5, x19, lsl #2
	sub	x7, x14, x7
LBB0_17:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s0, [x5]
	ldr	s1, [x6]
	fadd	s2, s0, s1
	str	s2, [x5], #4
	fsub	s0, s0, s1
	str	s0, [x6], #4
	subs	x7, x7, #1
	b.ne	LBB0_17
	b	LBB0_4
LBB0_18:
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #48             ; 16-byte Folded Reload
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
	mov	x13, #0                         ; =0x0
	movi.2d	v1, #0000000000000000
	stp	q1, q1, [x0, #224]
	stp	q1, q1, [x0, #192]
	stp	q1, q1, [x0, #160]
	stp	q1, q1, [x0, #128]
	stp	q1, q1, [x0, #96]
	stp	q1, q1, [x0, #64]
	mov	x9, sp
	mov	x10, #3361                      ; =0xd21
	movk	x10, #8402, lsl #16
	movk	x10, #53773, lsl #32
	movk	x10, #3360, lsl #48
	stp	q1, q1, [x0, #32]
	mov	w11, #624                       ; =0x270
	mov	w12, #45279                     ; =0xb0df
	movk	w12, #39176, lsl #16
	mov	w14, #22144                     ; =0x5680
	movk	w14, #40236, lsl #16
	mov	w15, #-272236544                ; =0xefc60000
	mov	w16, #796917760                 ; =0x2f800000
	fmov	s0, #-1.00000000
	stp	q1, q1, [x0]
	fmov	s1, #2.00000000
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x17, x13, #1
	lsl	x1, x13, #2
	add	x2, x13, #397
	cmp	x17, #624
	csinc	x13, xzr, x13, eq
	ldr	w17, [x9, x1]
	ldr	w3, [x9, x13, lsl #2]
	and	w17, w17, #0x80000000
	lsr	x4, x2, #4
	umulh	x4, x4, x10
	lsr	x4, x4, #1
	msub	x2, x4, x11, x2
	and	w4, w3, #0x7ffffffe
	orr	w17, w4, w17
	ldr	w2, [x9, x2, lsl #2]
	eor	w17, w2, w17, lsr #1
	sbfx	w2, w3, #0, #1
	and	w2, w2, w12
	eor	w17, w17, w2
	eor	w2, w17, w17, lsr #11
	and	w3, w14, w2, lsl #7
	eor	w2, w3, w2
	and	w3, w15, w2, lsl #15
	eor	w2, w3, w2
	eor	w2, w2, w2, lsr #18
	ucvtf	s2, w2
	fmov	s3, w16
	fmul	s2, s2, s3
	str	w17, [x9, x1]
	fmadd	s2, s2, s1, s0
	str	s2, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB1_8
; %bb.9:
	add	x8, x0, #16
	mov	w9, #1                          ; =0x1
	b	LBB1_11
LBB1_10:                                ;   in Loop: Header=BB1_11 Depth=1
	cmp	w12, #64
	b.ge	LBB1_37
LBB1_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_13 Depth 2
                                        ;       Child Loop BB1_33 Depth 3
                                        ;       Child Loop BB1_36 Depth 3
	mov	x10, #0                         ; =0x0
                                        ; kill: def $w9 killed $w9 killed $x9 def $x9
	sxtw	x11, w9
	lsl	w9, w9, #1
	sxtw	x12, w9
	mov	x13, x11
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x10, x10, x12
	add	x13, x13, x12
	cmp	x10, #64
	b.ge	LBB1_10
LBB1_13:                                ;   Parent Loop BB1_11 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_33 Depth 3
                                        ;       Child Loop BB1_36 Depth 3
	cmp	w11, #4
	b.hs	LBB1_15
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #0                         ; =0x0
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_15:                                ;   in Loop: Header=BB1_13 Depth=2
	lsl	x14, x10, #2
	ldr	q0, [x0, x14]
	add	x15, x10, x11
	lsl	x15, x15, #2
	ldr	q1, [x0, x15]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x14]
	str	q0, [x0, x15]
	cmp	w11, #8
	b.hs	LBB1_17
; %bb.16:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #4                         ; =0x4
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_17:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #4
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	cmp	w11, #12
	b.hs	LBB1_19
; %bb.18:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #8                         ; =0x8
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_19:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #8
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	cmp	w11, #16
	b.hs	LBB1_21
; %bb.20:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #12                        ; =0xc
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_21:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #12
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	cmp	w11, #20
	b.hs	LBB1_23
; %bb.22:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #16                        ; =0x10
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_23:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #16
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	cmp	w11, #24
	b.hs	LBB1_25
; %bb.24:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #20                        ; =0x14
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_25:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #20
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	cmp	w11, #28
	b.hs	LBB1_27
; %bb.26:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #24                        ; =0x18
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_27:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #24
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	cmp	w11, #32
	b.hs	LBB1_29
; %bb.28:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w14, #28                        ; =0x1c
	cmp	w14, w11
	b.hs	LBB1_12
	b	LBB1_30
LBB1_29:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x14, x10, #28
	lsl	x15, x14, #2
	ldr	q0, [x0, x15]
	add	x14, x14, x11
	lsl	x14, x14, #2
	ldr	q1, [x0, x14]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x0, x15]
	str	q0, [x0, x14]
	mov	w14, #32                        ; =0x20
	cmp	w14, w11
	b.hs	LBB1_12
LBB1_30:                                ;   in Loop: Header=BB1_13 Depth=2
	mov	w1, w14
	sub	x15, x11, x1
	cmp	x15, #8
	b.hs	LBB1_32
; %bb.31:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	x14, x1
	b	LBB1_35
LBB1_32:                                ;   in Loop: Header=BB1_13 Depth=2
	and	x16, x15, #0xfffffffffffffff8
	add	x14, x16, x1
	add	x17, x10, x1
	add	x17, x8, x17, lsl #2
	add	x2, x13, x1
	mov	x1, x16
	add	x2, x8, x2, lsl #2
LBB1_33:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x17, #-16]
	ldp	q2, q3, [x2, #-16]
	fadd.4s	v4, v0, v2
	fadd.4s	v5, v1, v3
	stp	q4, q5, [x17, #-16]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x2, #-16]
	add	x17, x17, #32
	add	x2, x2, #32
	subs	x1, x1, #8
	b.ne	LBB1_33
; %bb.34:                               ;   in Loop: Header=BB1_13 Depth=2
	cmp	x15, x16
	b.eq	LBB1_12
LBB1_35:                                ;   in Loop: Header=BB1_13 Depth=2
	sub	x15, x11, x14
	add	x16, x14, x13
	add	x16, x0, x16, lsl #2
	add	x14, x14, x10
	add	x14, x0, x14, lsl #2
LBB1_36:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s0, [x14]
	ldr	s1, [x16]
	fadd	s2, s0, s1
	str	s2, [x14], #4
	fsub	s0, s0, s1
	str	s0, [x16], #4
	subs	x15, x15, #1
	b.ne	LBB1_36
	b	LBB1_12
LBB1_37:
	bl	__ZdlPv
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2512
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_38:
Ltmp8:
	b	LBB1_40
LBB1_39:
Ltmp5:
LBB1_40:
	mov	x19, x0
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_41:
Ltmp2:
	mov	x19, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_43
; %bb.42:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_43:
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
