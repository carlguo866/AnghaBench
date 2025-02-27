; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asl_16_aw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asl_16_aw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_asl_16_aw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_asl_16_aw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @EA_AW_16()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @m68ki_read_16(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %7, 1
  %9 = call i32 @MASK_OUT_ABOVE_16(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @m68ki_write_16(i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @NFLAG_16(i32 %13)
  store i32 %14, i32* @FLAG_N, align 4
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* @FLAG_Z, align 4
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 7
  store i32 %17, i32* @FLAG_C, align 4
  store i32 %17, i32* @FLAG_X, align 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 49152
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 49152
  br label %25

25:                                               ; preds = %22, %0
  %26 = phi i1 [ true, %0 ], [ %24, %22 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = shl i32 %28, 7
  store i32 %29, i32* @FLAG_V, align 4
  ret void
}

declare dso_local i32 @EA_AW_16(...) #1

declare dso_local i32 @m68ki_read_16(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @m68ki_write_16(i32, i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
