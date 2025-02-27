; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_get_clk_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_get_clk_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPMC_CS_CONFIG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @gpmc_get_clk_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpmc_get_clk_period(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i64 (...) @gpmc_get_fclk_period()
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 128, label %21
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GPMC_CS_CONFIG1, align 4
  %13 = call i32 @gpmc_cs_read_reg(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 3
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = mul i64 %19, %18
  store i64 %20, i64* %5, align 8
  br label %23

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i64, i64* %5, align 8
  ret i64 %24
}

declare dso_local i64 @gpmc_get_fclk_period(...) #1

declare dso_local i32 @gpmc_cs_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
