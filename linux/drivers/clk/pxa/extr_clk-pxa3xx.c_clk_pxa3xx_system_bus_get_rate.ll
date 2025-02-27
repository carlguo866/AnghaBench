; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa3xx.c_clk_pxa3xx_system_bus_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa3xx.c_clk_pxa3xx_system_bus_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@ACSR = common dso_local global i64 0, align 8
@hss_mult = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pxa3xx_system_bus_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pxa3xx_system_bus_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @ACSR, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = lshr i64 %9, 14
  %11 = and i64 %10, 3
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = call i64 (...) @pxa3xx_is_ring_osc_forced()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %3, align 8
  br label %26

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %18, 48
  %20 = load i64*, i64** @hss_mult, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %19, %24
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @pxa3xx_is_ring_osc_forced(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
