; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_muls_16_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_muls_16_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_muls_16_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_muls_16_d() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32* @DX, i32** %1, align 8
  %4 = load i32, i32* @DY, align 4
  %5 = call i32 @MAKE_INT_16(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MASK_OUT_ABOVE_16(i32 %8)
  %10 = call i32 @MAKE_INT_16(i32 %9)
  %11 = mul nsw i32 %6, %10
  %12 = call i32 @MASK_OUT_ABOVE_32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @UseMulsCycles(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** %1, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @FLAG_Z, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @NFLAG_32(i32 %18)
  store i32 %19, i32* @FLAG_N, align 4
  %20 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %20, i32* @FLAG_V, align 4
  %21 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %21, i32* @FLAG_C, align 4
  ret void
}

declare dso_local i32 @MAKE_INT_16(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @UseMulsCycles(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
