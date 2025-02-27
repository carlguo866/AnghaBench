; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_unpk_16_rr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_unpk_16_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_unpk_16_rr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @CPU_TYPE, align 4
  %4 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load i32, i32* @DY, align 4
  store i32 %7, i32* %1, align 4
  store i32* @DX, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MASK_OUT_BELOW_16(i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = shl i32 %11, 4
  %13 = and i32 %12, 3840
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, 15
  %16 = or i32 %13, %15
  %17 = call i32 (...) @OPER_I_16()
  %18 = add nsw i32 %16, %17
  %19 = and i32 %18, 65535
  %20 = or i32 %10, %19
  %21 = load i32*, i32** %2, align 8
  store i32 %20, i32* %21, align 4
  br label %24

22:                                               ; preds = %0
  %23 = call i32 (...) @m68ki_exception_illegal()
  br label %24

24:                                               ; preds = %22, %6
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
