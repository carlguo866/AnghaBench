; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bchg_32_s_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bchg_32_s_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bchg_32_s_d() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %3 = call i32 (...) @OPER_I_8()
  %4 = and i32 %3, 31
  %5 = shl i32 1, %4
  store i32 %5, i32* %2, align 4
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* @FLAG_Z, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, %10
  store i32 %13, i32* %11, align 4
  ret void
}

declare dso_local i32 @OPER_I_8(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
