	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE ; -- Begin function _Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	.p2align	2
__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE: ; @_Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 112
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	ldp	x9, x8, [x0]
	sub	x9, x8, x9
	lsr	x8, x9, #2
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cmp	w8, #2
	b.lt	LBB0_23
; %bb.1:
	sbfx	x9, x9, #2, #32
	mov	w11, #1                         ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x11, x12
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cmp	w12, w8
	b.ge	LBB0_23
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_12 Depth 2
                                        ;       Child Loop BB0_13 Depth 3
                                        ;       Child Loop BB0_19 Depth 3
                                        ;       Child Loop BB0_22 Depth 3
                                        ;     Child Loop BB0_7 Depth 2
	lsl	w12, w11, #1
	cmp	w11, #4
	b.ge	LBB0_10
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w11, #1
	b.lt	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	x13, [x0]
	sxtw	x14, w12
	mov	x8, x11
	ubfiz	x15, x11, #2, #32
	sbfiz	x16, x12, #2, #32
	mov	w17, #2                         ; =0x2
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	add	x17, x17, x14
	sub	x8, x17, #2
	add	x13, x13, x16
	cmp	x8, x9
	b.ge	LBB0_2
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s0, [x13]
	ldr	s1, [x13, x15]
	fadd	s2, s1, s0
	str	s2, [x13]
	fsub	s0, s0, s1
	str	s0, [x13, x15]
	cmp	w11, #1
	b.eq	LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [x13, #4]
	add	x1, x13, x15
	ldr	s1, [x1, #4]
	fadd	s2, s1, s0
	str	s2, [x13, #4]
	fsub	s0, s0, s1
	str	s0, [x1, #4]
	cmp	w11, #2
	b.eq	LBB0_6
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [x13, #8]
	ldr	s1, [x1, #8]
	fadd	s2, s1, s0
	str	s2, [x13, #8]
	fsub	s0, s0, s1
	str	s0, [x1, #8]
	b	LBB0_6
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x13, #0                         ; =0x0
	mov	x14, #0                         ; =0x0
	mov	x15, #0                         ; =0x0
	mov	w16, w11
	sxtw	x17, w12
	sbfiz	x1, x12, #2, #32
	cmp	x16, #7
	mov	w8, #7                          ; =0x7
	csel	x10, x16, x8, hi
	sub	x2, x10, #4
	and	x3, x2, #0xfffffffffffffffc
	add	x3, x3, #5
	cmp	x3, x16
	csel	x3, x3, x16, hi
	lsl	x4, x3, #2
	lsl	x2, x2, #2
	and	x5, x2, #0x7ffffffffffffff0
	sub	x2, x4, x5
	ubfiz	x3, x11, #2, #32
	add	x4, x4, x3
	sub	x4, x4, x5
	and	x10, x10, #0xfffffffc
	orr	x5, x10, #0x1
	cmp	x5, x16
	csel	x5, x5, x16, hi
	sub	x5, x5, x10
	and	x6, x5, #0xfffffffffffffff8
	add	x7, x3, #32
	mov	w19, #32                        ; =0x20
	mov	x20, x3
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x14, x14, #1
	add	x20, x20, x1
	add	x13, x13, x1
	add	x7, x7, x1
	add	x19, x19, x1
	add	x15, x15, x17
	cmp	x15, x9
	b.ge	LBB0_2
LBB0_12:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_13 Depth 3
                                        ;       Child Loop BB0_19 Depth 3
                                        ;       Child Loop BB0_22 Depth 3
	mov	x22, #0                         ; =0x0
	mov	x21, #0                         ; =0x0
	mul	x23, x1, x14
	add	x26, x2, x23
	add	x27, x4, x23
	mov	x30, x19
	mov	x25, x7
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x10, x25
	mov	x24, x30
	add	x8, x21, #8
	add	x21, x21, #4
	ldr	x25, [x0]
	add	x30, x25, x13
	lsl	x28, x22, #4
	ldr	q0, [x30, x28]
	add	x25, x25, x20
	ldr	q1, [x25, x28]
	fadd.4s	v2, v1, v0
	fsub.4s	v0, v0, v1
	str	q2, [x30, x28]
	ldr	x25, [x0]
	add	x25, x25, x20
	str	q0, [x25, x28]
	add	x22, x22, #1
	add	x25, x10, #16
	add	x30, x24, #16
	cmp	x8, x16
	b.ls	LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=2
	cmp	w11, w21
	b.le	LBB0_11
; %bb.15:                               ;   in Loop: Header=BB0_12 Depth=2
	ldr	x22, [x0]
	cmp	x5, #8
	b.lo	LBB0_21
; %bb.16:                               ;   in Loop: Header=BB0_12 Depth=2
	add	x8, x28, x23
	add	x8, x22, x8
	add	x8, x8, #16
	add	x25, x28, x27
	add	x25, x22, x25
	cmp	x8, x25
	b.hs	LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_12 Depth=2
	add	x8, x28, x26
	add	x8, x22, x8
	add	x23, x3, x23
	add	x23, x28, x23
	add	x23, x22, x23
	add	x23, x23, #16
	cmp	x23, x8
	b.lo	LBB0_21
LBB0_18:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x21, x21, x6
	add	x23, x22, x10
	add	x24, x22, x24
	mov	x25, x6
LBB0_19:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x24, #-16]
	ldp	q2, q3, [x23, #-16]
	fadd.4s	v4, v2, v0
	fadd.4s	v5, v3, v1
	stp	q4, q5, [x24, #-16]
	fsub.4s	v0, v0, v2
	fsub.4s	v1, v1, v3
	stp	q0, q1, [x23, #-16]
	add	x23, x23, #32
	add	x24, x24, #32
	subs	x25, x25, #8
	b.ne	LBB0_19
; %bb.20:                               ;   in Loop: Header=BB0_12 Depth=2
	cmp	x5, x6
	b.eq	LBB0_11
LBB0_21:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x23, x22, x20
	add	x22, x22, x13
LBB0_22:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lsl	x8, x21, #2
	ldr	s0, [x22, x8]
	ldr	s1, [x23, x8]
	fadd	s2, s1, s0
	str	s2, [x22, x8]
	fsub	s0, s0, s1
	str	s0, [x23, x8]
	add	x21, x21, #1
	cmp	x21, x16
	b.lo	LBB0_22
	b	LBB0_11
LBB0_23:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
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
	sub	sp, sp, #2544
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w8, #12                         ; =0xc
	strb	w8, [sp, #55]
	mov	w8, #25710                      ; =0x646e
	movk	w8, #28015, lsl #16
	str	w8, [sp, #40]
Lloh0:
	adrp	x8, l_.str@PAGE
Lloh1:
	add	x8, x8, l_.str@PAGEOFF
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #32]
	strb	wzr, [sp, #44]
Ltmp0:
	sub	x0, x29, #20
	add	x1, sp, #32
	bl	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp1:
; %bb.1:
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB1_3
; %bb.2:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
LBB1_3:
Ltmp3:
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceclEv
Ltmp4:
; %bb.4:
	str	w0, [sp, #32]
	mov	w8, #1                          ; =0x1
	mov	w9, #35173                      ; =0x8965
	movk	w9, #27655, lsl #16
	add	x10, sp, #32
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
	mov	x19, x0
	mov	x8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
	add	x11, x0, #256
	stp	x11, x11, [sp, #16]
	movi.2d	v1, #0000000000000000
	stp	q1, q1, [x0]
	stp	q1, q1, [x0, #32]
	stp	q1, q1, [x0, #64]
	stp	q1, q1, [x0, #96]
	stp	q1, q1, [x0, #128]
	stp	q1, q1, [x0, #160]
	stp	q1, q1, [x0, #192]
	add	x10, sp, #32
	str	x0, [sp, #8]
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
	stp	q1, q1, [x0, #224]
	fmov	s1, #-1.00000000
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x16, x9, #1
	cmp	x16, #624
	lsl	x16, x9, #2
	add	x17, x9, #397
	csinc	x9, xzr, x9, eq
	ldr	w0, [x10, x16]
	and	w0, w0, #0x80000000
	ldr	w1, [x10, x9, lsl #2]
	and	w2, w1, #0x7ffffffe
	lsr	x3, x17, #4
	umulh	x3, x3, x11
	orr	w0, w2, w0
	lsr	x2, x3, #1
	msub	x17, x2, x12, x17
	ldr	w17, [x10, x17, lsl #2]
	sbfx	w1, w1, #0, #1
	eor	w17, w17, w0, lsr #1
	and	w0, w1, w13
	eor	w17, w17, w0
	eor	w0, w17, w17, lsr #11
	and	w1, w14, w0, lsl #7
	eor	w0, w1, w0
	and	w1, w15, w0, lsl #15
	eor	w0, w1, w0
	eor	w0, w0, w0, lsr #18
	ucvtf	s2, w0
	str	w17, [x10, x16]
	fmadd	s2, s2, s0, s1
	str	s2, [x19, x8]
	add	x8, x8, #4
	cmp	x8, #256
	b.ne	LBB1_8
; %bb.9:
	add	x0, sp, #8
	bl	__Z8wht_neonRNSt3__16vectorIfNS_9allocatorIfEEEE
	mov	x0, x19
	bl	__ZdlPv
	sub	x0, x29, #20
	bl	__ZNSt3__113random_deviceD1Ev
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2544
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
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB1_14
; %bb.13:
	ldr	x0, [sp, #32]
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
