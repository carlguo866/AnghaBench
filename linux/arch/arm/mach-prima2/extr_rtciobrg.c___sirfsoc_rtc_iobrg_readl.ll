; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_rtciobrg.c___sirfsoc_rtc_iobrg_readl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_rtciobrg.c___sirfsoc_rtc_iobrg_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sirfsoc_rtciobrg_base = common dso_local global i64 0, align 8
@SIRFSOC_CPUIOBRG_WRBE = common dso_local global i64 0, align 8
@SIRFSOC_CPUIOBRG_ADDR = common dso_local global i64 0, align 8
@SIRFSOC_CPUIOBRG_CTRL = common dso_local global i64 0, align 8
@SIRFSOC_CPUIOBRG_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sirfsoc_rtc_iobrg_readl(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @sirfsoc_rtc_iobrg_wait_sync()
  %4 = load i64, i64* @sirfsoc_rtciobrg_base, align 8
  %5 = load i64, i64* @SIRFSOC_CPUIOBRG_WRBE, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @writel_relaxed(i32 0, i64 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i64, i64* @sirfsoc_rtciobrg_base, align 8
  %10 = load i64, i64* @SIRFSOC_CPUIOBRG_ADDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 %8, i64 %11)
  %13 = load i64, i64* @sirfsoc_rtciobrg_base, align 8
  %14 = load i64, i64* @SIRFSOC_CPUIOBRG_CTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 1, i64 %15)
  %17 = call i32 (...) @sirfsoc_rtc_iobrg_wait_sync()
  %18 = load i64, i64* @sirfsoc_rtciobrg_base, align 8
  %19 = load i64, i64* @SIRFSOC_CPUIOBRG_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  ret i32 %21
}

declare dso_local i32 @sirfsoc_rtc_iobrg_wait_sync(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
