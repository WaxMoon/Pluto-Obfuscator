; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mattr=+amx-int8 -mattr=+avx512f -verify-machineinstrs | FileCheck %s

@buf = dso_local global [1024 x i8] zeroinitializer, align 64
@buf2 = dso_local global [1024 x i8] zeroinitializer, align 64

; Function Attrs: nounwind uwtable
define dso_local void @test_api(i32 %0, i16 signext %1, i16 signext %2) {
; CHECK-LABEL: test_api:
; CHECK:       # %bb.0:
; CHECK-NEXT:    testl %edi, %edi
; CHECK-NEXT:    movsbl %sil, %eax
; CHECK-NEXT:    vpxord %zmm0, %zmm0, %zmm0
; CHECK-NEXT:    vmovdqu64 %zmm0, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movb $1, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movb %al, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movw %si, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movb %al, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movw %dx, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movb %al, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    movw %dx, -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    ldtilecfg -{{[0-9]+}}(%rsp)
; CHECK-NEXT:    je .LBB0_2
; CHECK-NEXT:  # %bb.1:
; CHECK-NEXT:    movl $buf, %ecx
; CHECK-NEXT:    jmp .LBB0_3
; CHECK-NEXT:  .LBB0_2:
; CHECK-NEXT:    movl $buf2, %ecx
; CHECK-NEXT:  .LBB0_3:
; CHECK-NEXT:    movl $32, %edi
; CHECK-NEXT:    tileloadd (%rcx,%rdi), %tmm0
; CHECK-NEXT:    tileloadd (%rcx,%rdi), %tmm2
; CHECK-NEXT:    tileloadd (%rcx,%rdi), %tmm1
; CHECK-NEXT:    tdpbssd %tmm2, %tmm0, %tmm1
; CHECK-NEXT:    movl $buf, %ecx
; CHECK-NEXT:    movl $32, %esi
; CHECK-NEXT:    tilestored %tmm1, (%rcx,%rsi)
; CHECK-NEXT:    tilerelease
; CHECK-NEXT:    vzeroupper
; CHECK-NEXT:    retq
  %4 = icmp eq i32 %0, 0
  %5 = shl i16 %1, 8
  %6 = ashr exact i16 %5, 8
  br i1 %4, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call x86_amx @llvm.x86.tileloadd64.internal(i16 %6, i16 %1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 32)
  %9 = tail call x86_amx @llvm.x86.tileloadd64.internal(i16 %6, i16 %2, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 32)
  %10 = tail call x86_amx @llvm.x86.tileloadd64.internal(i16 %6, i16 %2, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 32)
  br label %15

11:                                               ; preds = %3
  %12 = tail call x86_amx @llvm.x86.tileloadd64.internal(i16 %6, i16 %1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf2, i64 0, i64 0), i64 32)
  %13 = tail call x86_amx @llvm.x86.tileloadd64.internal(i16 %6, i16 %2, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf2, i64 0, i64 0), i64 32)
  %14 = tail call x86_amx @llvm.x86.tileloadd64.internal(i16 %6, i16 %2, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf2, i64 0, i64 0), i64 32)
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi x86_amx [ %12, %11 ], [ %8, %7 ]
  %17 = phi x86_amx [ %13, %11 ], [ %9, %7 ]
  %18 = phi x86_amx [ %14, %11 ], [ %10, %7 ]
  %19 = tail call x86_amx @llvm.x86.tdpbssd.internal(i16 %6, i16 %2, i16 %1, x86_amx %18, x86_amx %16, x86_amx %17)
  tail call void @llvm.x86.tilestored64.internal(i16 %6, i16 %2, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buf, i64 0, i64 0), i64 32, x86_amx %19)
  ret void
}

declare x86_amx @llvm.x86.tileloadd64.internal(i16, i16, i8*, i64)

declare x86_amx @llvm.x86.tdpbssd.internal(i16, i16, i16, x86_amx, x86_amx, x86_amx)

declare void @llvm.x86.tilestored64.internal(i16, i16, i8*, i64, x86_amx)