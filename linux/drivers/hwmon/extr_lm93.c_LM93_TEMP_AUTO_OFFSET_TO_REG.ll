; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_LM93_TEMP_AUTO_OFFSET_TO_REG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_LM93_TEMP_AUTO_OFFSET_TO_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @LM93_TEMP_AUTO_OFFSET_TO_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_TEMP_AUTO_OFFSET_TO_REG(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @LM93_TEMP_OFFSET_TO_REG(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 240
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 15
  %21 = or i32 %18, %20
  store i32 %21, i32* %5, align 4
  br label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 4
  %25 = and i32 %24, 240
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  %28 = or i32 %25, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @LM93_TEMP_OFFSET_TO_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
