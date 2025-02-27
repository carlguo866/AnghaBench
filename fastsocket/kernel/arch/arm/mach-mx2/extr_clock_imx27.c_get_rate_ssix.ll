; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_ssix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_get_rate_ssix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CHIP_REV_2_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*, i64)* @get_rate_ssix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_ssix(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.clk*, %struct.clk** %3, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @clk_get_rate(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = call i64 (...) @mx27_revision()
  %11 = load i64, i64* @CHIP_REV_2_0, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, 4
  store i64 %15, i64* %4, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i64 [ 124, %19 ], [ %21, %20 ]
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i64, i64* %5, align 8
  %26 = mul i64 2, %25
  %27 = load i64, i64* %4, align 8
  %28 = udiv i64 %26, %27
  ret i64 %28
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @mx27_revision(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
