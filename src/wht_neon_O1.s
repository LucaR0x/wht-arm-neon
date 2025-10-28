	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE ; -- Begin function _Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	.p2align	2
__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE: ; @_Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [x0]
	sub	x9, x8, x9
	lsr	x8, x9, #2
	cmp	w8, #2
	b.lt	LBB0_12
; %bb.1:
	sbfx	x9, x9, #2, #32
	mov	w12, #1                         ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w14, w8
	b.ge	LBB0_12
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_8 Depth 3
                                        ;       Child Loop BB0_11 Depth 3
	mov	x10, #0                         ; =0x0
	mov	x11, #0                         ; =0x0
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	mov	w13, w12
	sxtw	x15, w12
	sbfiz	x16, x12, #2, #32
	lsl	w12, w12, #1
	sxtw	x14, w12
	mov	x17, x15
	sbfiz	x1, x12, #2, #32
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=2
	add	x10, x10, x1
	add	x17, x17, x14
	add	x11, x11, x14
	cmp	x11, x9
	b.ge	LBB0_2
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_8 Depth 3
                                        ;       Child Loop BB0_11 Depth 3
	cmp	w15, #4
	b.ge	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=2
	mov	x4, #0                          ; =0x0
	cmp	w4, w13
	b.ge	LBB0_4
	b	LBB0_10
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=2
	mov	x3, #0                          ; =0x0
	mov	x2, x10
LBB0_8:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x4, x3, #4
	ldr	x5, [x0]
	add	x5, x5, x2
	ldr	q0, [x5, x16]
	ldr	q1, [x5]
	fadd.4s	v2, v1, v0
	fsub.4s	v0, v1, v0
	str	q2, [x5]
	ldr	x5, [x0]
	add	x5, x5, x16
	str	q0, [x5, x2]
	add	x2, x2, #16
	add	x5, x3, #8
	mov	x3, x4
	cmp	x5, x15
	b.le	LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_5 Depth=2
	and	x4, x4, #0xffffffff
	cmp	w4, w13
	b.ge	LBB0_4
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=2
	ldr	x3, [x0]
	add	x2, x17, x4
	add	x2, x3, x2, lsl #2
	add	x5, x11, x4
	add	x3, x3, x5, lsl #2
	sub	x4, x13, x4
LBB0_11:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s0, [x3]
	ldr	s1, [x2]
	fadd	s2, s0, s1
	str	s2, [x3], #4
	fsub	s0, s0, s1
	str	s0, [x2], #4
	subs	x4, x4, #1
	b.ne	LBB0_11
	b	LBB0_4
LBB0_12:
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
	str	xzr, [sp, #2496]
Ltmp6:
	mov	w0, #256                        ; =0x100
	bl	__Znwm
Ltmp7:
; %bb.7:
	mov	x8, #0                          ; =0x0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #224]
	stp	q0, q0, [x0, #192]
	stp	q0, q0, [x0, #160]
	stp	q0, q0, [x0, #128]
	stp	q0, q0, [x0, #96]
	stp	q0, q0, [x0, #64]
	stp	q0, q0, [x0, #32]
	mov	x9, #3361                       ; =0xd21
	movk	x9, #8402, lsl #16
	movk	x9, #53773, lsl #32
	movk	x9, #3360, lsl #48
	mov	w10, #624                       ; =0x270
	mov	x11, sp
	mov	w12, #45279                     ; =0xb0df
	movk	w12, #39176, lsl #16
	mov	w13, #22144                     ; =0x5680
	movk	w13, #40236, lsl #16
	mov	w14, #-272236544                ; =0xefc60000
	mov	w15, #796917760                 ; =0x2f800000
	stp	q0, q0, [x0]
	fmov	s0, #-1.00000000
	fmov	s1, #2.00000000
	ldr	x16, [sp, #2496]
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x17, x16, #1
	lsr	x1, x17, #4
	umulh	x1, x1, x9
	lsr	x1, x1, #1
	lsl	x2, x16, #2
	add	x3, x16, #397
	msub	x16, x1, x10, x17
	ldr	w17, [x11, x2]
	ldr	w1, [x11, x16, lsl #2]
	and	w17, w17, #0x80000000
	and	w4, w1, #0x7ffffffe
	orr	w17, w4, w17
	lsr	x4, x3, #4
	umulh	x4, x4, x9
	lsr	x4, x4, #1
	msub	x3, x4, x10, x3
	ldr	w3, [x11, x3, lsl #2]
	eor	w17, w3, w17, lsr #1
	sbfx	w1, w1, #0, #1
	and	w1, w1, w12
	eor	w17, w17, w1
	str	w17, [x11, x2]
	eor	w17, w17, w17, lsr #11
	and	w1, w13, w17, lsl #7
	eor	w17, w1, w17
	and	w1, w14, w17, lsl #15
	eor	w17, w1, w17
	eor	w17, w17, w17, lsr #18
	ucvtf	s2, w17
	fmov	s3, w15
	fmul	s2, s2, s3
	fmadd	s2, s2, s1, s0
	str	s2, [x0, x8]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB1_8
; %bb.9:
	str	x16, [sp, #2496]
	mov	w8, #1                          ; =0x1
	b	LBB1_11
LBB1_10:                                ;   in Loop: Header=BB1_11 Depth=1
	cmp	w11, #64
	b.ge	LBB1_20
LBB1_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_13 Depth 2
                                        ;       Child Loop BB1_16 Depth 3
                                        ;       Child Loop BB1_19 Depth 3
	mov	x9, #0                          ; =0x0
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
	sxtw	x10, w8
	sbfiz	x12, x8, #2, #32
	lsl	w8, w8, #1
	sxtw	x11, w8
	sbfiz	x13, x8, #2, #32
	add	x14, x0, x12
	mov	x15, x0
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x9, x9, x11
	add	x15, x15, x13
	add	x14, x14, x13
	cmp	x9, #64
	b.ge	LBB1_10
LBB1_13:                                ;   Parent Loop BB1_11 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_16 Depth 3
                                        ;       Child Loop BB1_19 Depth 3
	cmp	w10, #4
	b.hs	LBB1_15
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w16, #0                         ; =0x0
	b	LBB1_17
LBB1_15:                                ;   in Loop: Header=BB1_13 Depth=2
	mov	x16, #0                         ; =0x0
	mov	x17, x15
LBB1_16:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x1, x16, #8
	add	x16, x16, #4
	ldr	q0, [x17]
	ldr	q1, [x17, x12]
	fadd.4s	v2, v0, v1
	fsub.4s	v0, v0, v1
	str	q2, [x17]
	str	q0, [x17, x12]
	add	x17, x17, #16
	cmp	x1, x10
	b.ls	LBB1_16
LBB1_17:                                ;   in Loop: Header=BB1_13 Depth=2
	cmp	w16, w10
	b.hs	LBB1_12
; %bb.18:                               ;   in Loop: Header=BB1_13 Depth=2
	mov	w16, w16
LBB1_19:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lsl	x17, x16, #2
	ldr	s0, [x15, x17]
	ldr	s1, [x14, x17]
	fadd	s2, s0, s1
	str	s2, [x15, x17]
	fsub	s0, s0, s1
	str	s0, [x14, x17]
	add	x16, x16, #1
	cmp	x10, x16
	b.ne	LBB1_19
	b	LBB1_12
LBB1_20:
	bl	__ZdlPv
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2512
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_21:
Ltmp8:
	b	LBB1_23
LBB1_22:
Ltmp5:
LBB1_23:
	mov	x19, x0
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB1_24:
Ltmp2:
	mov	x19, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_26
; %bb.25:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_26:
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
