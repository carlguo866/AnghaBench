; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_translate_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_translate_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READBACK_VALUE_MASK = common dso_local global i32 0, align 4
@READBACK_VALUE_SHIFT = common dso_local global i32 0, align 4
@READBACK_ADD_HALF = common dso_local global i32 0, align 4
@READBACK_NEGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @translate_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_temp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @READBACK_VALUE_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @READBACK_VALUE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = mul nsw i32 %8, 1000
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @READBACK_ADD_HALF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 500
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @READBACK_NEGATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
