; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_movep_32_re.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_movep_32_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_movep_32_re to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_movep_32_re() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @EA_AY_DI_32()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @DX, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 24
  %8 = call i32 @MASK_OUT_ABOVE_8(i32 %7)
  %9 = call i32 @m68ki_write_8(i32 %5, i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 16
  %14 = call i32 @MASK_OUT_ABOVE_8(i32 %13)
  %15 = call i32 @m68ki_write_8(i32 %11, i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 8
  %20 = call i32 @MASK_OUT_ABOVE_8(i32 %19)
  %21 = call i32 @m68ki_write_8(i32 %17, i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @MASK_OUT_ABOVE_8(i32 %24)
  %26 = call i32 @m68ki_write_8(i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @EA_AY_DI_32(...) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
