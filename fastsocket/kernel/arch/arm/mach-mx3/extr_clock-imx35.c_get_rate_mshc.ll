; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_mshc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_clock-imx35.c_get_rate_mshc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@CCM_BASE = common dso_local global i64 0, align 8
@CCM_PDR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @get_rate_mshc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rate_mshc(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %7 = load i64, i64* @CCM_BASE, align 8
  %8 = load i64, i64* @CCM_PDR1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i64 @__raw_readl(i64 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, 128
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i64 (...) @get_rate_arm()
  store i64 %15, i64* %6, align 8
  br label %18

16:                                               ; preds = %1
  %17 = call i64 (...) @get_rate_ppll()
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* %3, align 8
  %20 = lshr i64 %19, 29
  %21 = and i64 %20, 7
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = lshr i64 %22, 22
  %24 = and i64 %23, 63
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  %30 = mul i64 %27, %29
  %31 = udiv i64 %25, %30
  ret i64 %31
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @get_rate_arm(...) #1

declare dso_local i64 @get_rate_ppll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
