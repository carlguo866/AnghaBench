; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_negx_16_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_negx_16_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_negx_16_d() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @MASK_OUT_ABOVE_16(i32 %4)
  %6 = sub nsw i32 0, %5
  %7 = call i32 (...) @XFLAG_AS_1()
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @NFLAG_16(i32 %9)
  store i32 %10, i32* @FLAG_N, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @CFLAG_16(i32 %11)
  store i32 %12, i32* @FLAG_C, align 4
  store i32 %12, i32* @FLAG_X, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 8
  store i32 %17, i32* @FLAG_V, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @MASK_OUT_ABOVE_16(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @FLAG_Z, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @FLAG_Z, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MASK_OUT_BELOW_16(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %1, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i32 @NFLAG_16(i32) #1

declare dso_local i32 @CFLAG_16(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
