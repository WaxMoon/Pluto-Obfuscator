; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+experimental-v -verify-machineinstrs \
; RUN:   --riscv-no-aliases < %s | FileCheck %s
declare <vscale x 1 x i8> @llvm.riscv.viota.nxv1i8(
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i8> @intrinsic_viota_m_nxv1i8_nxv1i1(<vscale x 1 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv1i8_nxv1i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,mf8,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x i8> @llvm.riscv.viota.nxv1i8(
    <vscale x 1 x i1> %0,
    i32 %1)

  ret <vscale x 1 x i8> %a
}

declare <vscale x 1 x i8> @llvm.riscv.viota.mask.nxv1i8(
  <vscale x 1 x i8>,
  <vscale x 1 x i1>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i8> @intrinsic_viota_mask_m_nxv1i8_nxv1i1(<vscale x 1 x i8> %0, <vscale x 1 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv1i8_nxv1i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,mf8,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x i8> @llvm.riscv.viota.mask.nxv1i8(
    <vscale x 1 x i8> %0,
    <vscale x 1 x i1> %1,
    <vscale x 1 x i1> %1,
    i32 %2)

  ret <vscale x 1 x i8> %a
}

declare <vscale x 2 x i8> @llvm.riscv.viota.nxv2i8(
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i8> @intrinsic_viota_m_nxv2i8_nxv2i1(<vscale x 2 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv2i8_nxv2i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,mf4,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x i8> @llvm.riscv.viota.nxv2i8(
    <vscale x 2 x i1> %0,
    i32 %1)

  ret <vscale x 2 x i8> %a
}

declare <vscale x 2 x i8> @llvm.riscv.viota.mask.nxv2i8(
  <vscale x 2 x i8>,
  <vscale x 2 x i1>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i8> @intrinsic_viota_mask_m_nxv2i8_nxv2i1(<vscale x 2 x i8> %0, <vscale x 2 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv2i8_nxv2i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,mf4,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x i8> @llvm.riscv.viota.mask.nxv2i8(
    <vscale x 2 x i8> %0,
    <vscale x 2 x i1> %1,
    <vscale x 2 x i1> %1,
    i32 %2)

  ret <vscale x 2 x i8> %a
}

declare <vscale x 4 x i8> @llvm.riscv.viota.nxv4i8(
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i8> @intrinsic_viota_m_nxv4i8_nxv4i1(<vscale x 4 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv4i8_nxv4i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,mf2,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x i8> @llvm.riscv.viota.nxv4i8(
    <vscale x 4 x i1> %0,
    i32 %1)

  ret <vscale x 4 x i8> %a
}

declare <vscale x 4 x i8> @llvm.riscv.viota.mask.nxv4i8(
  <vscale x 4 x i8>,
  <vscale x 4 x i1>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i8> @intrinsic_viota_mask_m_nxv4i8_nxv4i1(<vscale x 4 x i8> %0, <vscale x 4 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv4i8_nxv4i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,mf2,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x i8> @llvm.riscv.viota.mask.nxv4i8(
    <vscale x 4 x i8> %0,
    <vscale x 4 x i1> %1,
    <vscale x 4 x i1> %1,
    i32 %2)

  ret <vscale x 4 x i8> %a
}

declare <vscale x 8 x i8> @llvm.riscv.viota.nxv8i8(
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i8> @intrinsic_viota_m_nxv8i8_nxv8i1(<vscale x 8 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv8i8_nxv8i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m1,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x i8> @llvm.riscv.viota.nxv8i8(
    <vscale x 8 x i1> %0,
    i32 %1)

  ret <vscale x 8 x i8> %a
}

declare <vscale x 8 x i8> @llvm.riscv.viota.mask.nxv8i8(
  <vscale x 8 x i8>,
  <vscale x 8 x i1>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i8> @intrinsic_viota_mask_m_nxv8i8_nxv8i1(<vscale x 8 x i8> %0, <vscale x 8 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv8i8_nxv8i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m1,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x i8> @llvm.riscv.viota.mask.nxv8i8(
    <vscale x 8 x i8> %0,
    <vscale x 8 x i1> %1,
    <vscale x 8 x i1> %1,
    i32 %2)

  ret <vscale x 8 x i8> %a
}

declare <vscale x 16 x i8> @llvm.riscv.viota.nxv16i8(
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i8> @intrinsic_viota_m_nxv16i8_nxv16i1(<vscale x 16 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv16i8_nxv16i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m2,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x i8> @llvm.riscv.viota.nxv16i8(
    <vscale x 16 x i1> %0,
    i32 %1)

  ret <vscale x 16 x i8> %a
}

declare <vscale x 16 x i8> @llvm.riscv.viota.mask.nxv16i8(
  <vscale x 16 x i8>,
  <vscale x 16 x i1>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i8> @intrinsic_viota_mask_m_nxv16i8_nxv16i1(<vscale x 16 x i8> %0, <vscale x 16 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv16i8_nxv16i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m2,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x i8> @llvm.riscv.viota.mask.nxv16i8(
    <vscale x 16 x i8> %0,
    <vscale x 16 x i1> %1,
    <vscale x 16 x i1> %1,
    i32 %2)

  ret <vscale x 16 x i8> %a
}

declare <vscale x 32 x i8> @llvm.riscv.viota.nxv32i8(
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i8> @intrinsic_viota_m_nxv32i8_nxv32i1(<vscale x 32 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv32i8_nxv32i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m4,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 32 x i8> @llvm.riscv.viota.nxv32i8(
    <vscale x 32 x i1> %0,
    i32 %1)

  ret <vscale x 32 x i8> %a
}

declare <vscale x 32 x i8> @llvm.riscv.viota.mask.nxv32i8(
  <vscale x 32 x i8>,
  <vscale x 32 x i1>,
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i8> @intrinsic_viota_mask_m_nxv32i8_nxv32i1(<vscale x 32 x i8> %0, <vscale x 32 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv32i8_nxv32i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m4,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 32 x i8> @llvm.riscv.viota.mask.nxv32i8(
    <vscale x 32 x i8> %0,
    <vscale x 32 x i1> %1,
    <vscale x 32 x i1> %1,
    i32 %2)

  ret <vscale x 32 x i8> %a
}

declare <vscale x 64 x i8> @llvm.riscv.viota.nxv64i8(
  <vscale x 64 x i1>,
  i32);

define <vscale x 64 x i8> @intrinsic_viota_m_nxv64i8_nxv64i1(<vscale x 64 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv64i8_nxv64i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m8,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 64 x i8> @llvm.riscv.viota.nxv64i8(
    <vscale x 64 x i1> %0,
    i32 %1)

  ret <vscale x 64 x i8> %a
}

declare <vscale x 64 x i8> @llvm.riscv.viota.mask.nxv64i8(
  <vscale x 64 x i8>,
  <vscale x 64 x i1>,
  <vscale x 64 x i1>,
  i32);

define <vscale x 64 x i8> @intrinsic_viota_mask_m_nxv64i8_nxv64i1(<vscale x 64 x i8> %0, <vscale x 64 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv64i8_nxv64i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e8,m8,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 64 x i8> @llvm.riscv.viota.mask.nxv64i8(
    <vscale x 64 x i8> %0,
    <vscale x 64 x i1> %1,
    <vscale x 64 x i1> %1,
    i32 %2)

  ret <vscale x 64 x i8> %a
}

declare <vscale x 1 x i16> @llvm.riscv.viota.nxv1i16(
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i16> @intrinsic_viota_m_nxv1i16_nxv1i1(<vscale x 1 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv1i16_nxv1i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf4,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x i16> @llvm.riscv.viota.nxv1i16(
    <vscale x 1 x i1> %0,
    i32 %1)

  ret <vscale x 1 x i16> %a
}

declare <vscale x 1 x i16> @llvm.riscv.viota.mask.nxv1i16(
  <vscale x 1 x i16>,
  <vscale x 1 x i1>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i16> @intrinsic_viota_mask_m_nxv1i16_nxv1i1(<vscale x 1 x i16> %0, <vscale x 1 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv1i16_nxv1i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf4,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x i16> @llvm.riscv.viota.mask.nxv1i16(
    <vscale x 1 x i16> %0,
    <vscale x 1 x i1> %1,
    <vscale x 1 x i1> %1,
    i32 %2)

  ret <vscale x 1 x i16> %a
}

declare <vscale x 2 x i16> @llvm.riscv.viota.nxv2i16(
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i16> @intrinsic_viota_m_nxv2i16_nxv2i1(<vscale x 2 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv2i16_nxv2i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf2,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x i16> @llvm.riscv.viota.nxv2i16(
    <vscale x 2 x i1> %0,
    i32 %1)

  ret <vscale x 2 x i16> %a
}

declare <vscale x 2 x i16> @llvm.riscv.viota.mask.nxv2i16(
  <vscale x 2 x i16>,
  <vscale x 2 x i1>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i16> @intrinsic_viota_mask_m_nxv2i16_nxv2i1(<vscale x 2 x i16> %0, <vscale x 2 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv2i16_nxv2i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf2,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x i16> @llvm.riscv.viota.mask.nxv2i16(
    <vscale x 2 x i16> %0,
    <vscale x 2 x i1> %1,
    <vscale x 2 x i1> %1,
    i32 %2)

  ret <vscale x 2 x i16> %a
}

declare <vscale x 4 x i16> @llvm.riscv.viota.nxv4i16(
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i16> @intrinsic_viota_m_nxv4i16_nxv4i1(<vscale x 4 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv4i16_nxv4i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m1,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x i16> @llvm.riscv.viota.nxv4i16(
    <vscale x 4 x i1> %0,
    i32 %1)

  ret <vscale x 4 x i16> %a
}

declare <vscale x 4 x i16> @llvm.riscv.viota.mask.nxv4i16(
  <vscale x 4 x i16>,
  <vscale x 4 x i1>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i16> @intrinsic_viota_mask_m_nxv4i16_nxv4i1(<vscale x 4 x i16> %0, <vscale x 4 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv4i16_nxv4i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m1,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x i16> @llvm.riscv.viota.mask.nxv4i16(
    <vscale x 4 x i16> %0,
    <vscale x 4 x i1> %1,
    <vscale x 4 x i1> %1,
    i32 %2)

  ret <vscale x 4 x i16> %a
}

declare <vscale x 8 x i16> @llvm.riscv.viota.nxv8i16(
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i16> @intrinsic_viota_m_nxv8i16_nxv8i1(<vscale x 8 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv8i16_nxv8i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m2,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x i16> @llvm.riscv.viota.nxv8i16(
    <vscale x 8 x i1> %0,
    i32 %1)

  ret <vscale x 8 x i16> %a
}

declare <vscale x 8 x i16> @llvm.riscv.viota.mask.nxv8i16(
  <vscale x 8 x i16>,
  <vscale x 8 x i1>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i16> @intrinsic_viota_mask_m_nxv8i16_nxv8i1(<vscale x 8 x i16> %0, <vscale x 8 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv8i16_nxv8i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m2,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x i16> @llvm.riscv.viota.mask.nxv8i16(
    <vscale x 8 x i16> %0,
    <vscale x 8 x i1> %1,
    <vscale x 8 x i1> %1,
    i32 %2)

  ret <vscale x 8 x i16> %a
}

declare <vscale x 16 x i16> @llvm.riscv.viota.nxv16i16(
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i16> @intrinsic_viota_m_nxv16i16_nxv16i1(<vscale x 16 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv16i16_nxv16i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m4,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x i16> @llvm.riscv.viota.nxv16i16(
    <vscale x 16 x i1> %0,
    i32 %1)

  ret <vscale x 16 x i16> %a
}

declare <vscale x 16 x i16> @llvm.riscv.viota.mask.nxv16i16(
  <vscale x 16 x i16>,
  <vscale x 16 x i1>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i16> @intrinsic_viota_mask_m_nxv16i16_nxv16i1(<vscale x 16 x i16> %0, <vscale x 16 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv16i16_nxv16i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m4,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x i16> @llvm.riscv.viota.mask.nxv16i16(
    <vscale x 16 x i16> %0,
    <vscale x 16 x i1> %1,
    <vscale x 16 x i1> %1,
    i32 %2)

  ret <vscale x 16 x i16> %a
}

declare <vscale x 32 x i16> @llvm.riscv.viota.nxv32i16(
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i16> @intrinsic_viota_m_nxv32i16_nxv32i1(<vscale x 32 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv32i16_nxv32i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m8,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 32 x i16> @llvm.riscv.viota.nxv32i16(
    <vscale x 32 x i1> %0,
    i32 %1)

  ret <vscale x 32 x i16> %a
}

declare <vscale x 32 x i16> @llvm.riscv.viota.mask.nxv32i16(
  <vscale x 32 x i16>,
  <vscale x 32 x i1>,
  <vscale x 32 x i1>,
  i32);

define <vscale x 32 x i16> @intrinsic_viota_mask_m_nxv32i16_nxv32i1(<vscale x 32 x i16> %0, <vscale x 32 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv32i16_nxv32i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m8,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 32 x i16> @llvm.riscv.viota.mask.nxv32i16(
    <vscale x 32 x i16> %0,
    <vscale x 32 x i1> %1,
    <vscale x 32 x i1> %1,
    i32 %2)

  ret <vscale x 32 x i16> %a
}

declare <vscale x 1 x i32> @llvm.riscv.viota.nxv1i32(
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i32> @intrinsic_viota_m_nxv1i32_nxv1i1(<vscale x 1 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv1i32_nxv1i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,mf2,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x i32> @llvm.riscv.viota.nxv1i32(
    <vscale x 1 x i1> %0,
    i32 %1)

  ret <vscale x 1 x i32> %a
}

declare <vscale x 1 x i32> @llvm.riscv.viota.mask.nxv1i32(
  <vscale x 1 x i32>,
  <vscale x 1 x i1>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x i32> @intrinsic_viota_mask_m_nxv1i32_nxv1i1(<vscale x 1 x i32> %0, <vscale x 1 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv1i32_nxv1i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,mf2,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x i32> @llvm.riscv.viota.mask.nxv1i32(
    <vscale x 1 x i32> %0,
    <vscale x 1 x i1> %1,
    <vscale x 1 x i1> %1,
    i32 %2)

  ret <vscale x 1 x i32> %a
}

declare <vscale x 2 x i32> @llvm.riscv.viota.nxv2i32(
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i32> @intrinsic_viota_m_nxv2i32_nxv2i1(<vscale x 2 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv2i32_nxv2i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m1,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x i32> @llvm.riscv.viota.nxv2i32(
    <vscale x 2 x i1> %0,
    i32 %1)

  ret <vscale x 2 x i32> %a
}

declare <vscale x 2 x i32> @llvm.riscv.viota.mask.nxv2i32(
  <vscale x 2 x i32>,
  <vscale x 2 x i1>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x i32> @intrinsic_viota_mask_m_nxv2i32_nxv2i1(<vscale x 2 x i32> %0, <vscale x 2 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv2i32_nxv2i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m1,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x i32> @llvm.riscv.viota.mask.nxv2i32(
    <vscale x 2 x i32> %0,
    <vscale x 2 x i1> %1,
    <vscale x 2 x i1> %1,
    i32 %2)

  ret <vscale x 2 x i32> %a
}

declare <vscale x 4 x i32> @llvm.riscv.viota.nxv4i32(
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i32> @intrinsic_viota_m_nxv4i32_nxv4i1(<vscale x 4 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv4i32_nxv4i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m2,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x i32> @llvm.riscv.viota.nxv4i32(
    <vscale x 4 x i1> %0,
    i32 %1)

  ret <vscale x 4 x i32> %a
}

declare <vscale x 4 x i32> @llvm.riscv.viota.mask.nxv4i32(
  <vscale x 4 x i32>,
  <vscale x 4 x i1>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x i32> @intrinsic_viota_mask_m_nxv4i32_nxv4i1(<vscale x 4 x i32> %0, <vscale x 4 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv4i32_nxv4i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m2,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x i32> @llvm.riscv.viota.mask.nxv4i32(
    <vscale x 4 x i32> %0,
    <vscale x 4 x i1> %1,
    <vscale x 4 x i1> %1,
    i32 %2)

  ret <vscale x 4 x i32> %a
}

declare <vscale x 8 x i32> @llvm.riscv.viota.nxv8i32(
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i32> @intrinsic_viota_m_nxv8i32_nxv8i1(<vscale x 8 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv8i32_nxv8i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m4,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x i32> @llvm.riscv.viota.nxv8i32(
    <vscale x 8 x i1> %0,
    i32 %1)

  ret <vscale x 8 x i32> %a
}

declare <vscale x 8 x i32> @llvm.riscv.viota.mask.nxv8i32(
  <vscale x 8 x i32>,
  <vscale x 8 x i1>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x i32> @intrinsic_viota_mask_m_nxv8i32_nxv8i1(<vscale x 8 x i32> %0, <vscale x 8 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv8i32_nxv8i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m4,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x i32> @llvm.riscv.viota.mask.nxv8i32(
    <vscale x 8 x i32> %0,
    <vscale x 8 x i1> %1,
    <vscale x 8 x i1> %1,
    i32 %2)

  ret <vscale x 8 x i32> %a
}

declare <vscale x 16 x i32> @llvm.riscv.viota.nxv16i32(
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i32> @intrinsic_viota_m_nxv16i32_nxv16i1(<vscale x 16 x i1> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_viota_m_nxv16i32_nxv16i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m8,ta,mu
; CHECK-NEXT:    viota.m v8, v0
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x i32> @llvm.riscv.viota.nxv16i32(
    <vscale x 16 x i1> %0,
    i32 %1)

  ret <vscale x 16 x i32> %a
}

declare <vscale x 16 x i32> @llvm.riscv.viota.mask.nxv16i32(
  <vscale x 16 x i32>,
  <vscale x 16 x i1>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x i32> @intrinsic_viota_mask_m_nxv16i32_nxv16i1(<vscale x 16 x i32> %0, <vscale x 16 x i1> %1, i32 %2) nounwind {
; CHECK-LABEL: intrinsic_viota_mask_m_nxv16i32_nxv16i1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m8,tu,mu
; CHECK-NEXT:    viota.m v8, v0, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x i32> @llvm.riscv.viota.mask.nxv16i32(
    <vscale x 16 x i32> %0,
    <vscale x 16 x i1> %1,
    <vscale x 16 x i1> %1,
    i32 %2)

  ret <vscale x 16 x i32> %a
}