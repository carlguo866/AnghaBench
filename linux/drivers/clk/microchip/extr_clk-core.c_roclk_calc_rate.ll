; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_roclk_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_roclk_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @roclk_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roclk_calc_rate(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 9
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @do_div(i32 %19, i32 %20)
  br label %36

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %26, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  ret i64 %38
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
