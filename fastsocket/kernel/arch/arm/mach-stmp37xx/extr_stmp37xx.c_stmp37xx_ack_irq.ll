; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp37xx/extr_stmp37xx.c_stmp37xx_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-stmp37xx/extr_stmp37xx.c_stmp37xx_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGS_ICOLL_BASE = common dso_local global i64 0, align 8
@HW_ICOLL_PRIORITYn = common dso_local global i64 0, align 8
@HW_ICOLL_LEVELACK = common dso_local global i64 0, align 8
@HW_ICOLL_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stmp37xx_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmp37xx_ack_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = urem i32 %3, 4
  %5 = mul i32 %4, 8
  %6 = shl i32 4, %5
  %7 = load i64, i64* @REGS_ICOLL_BASE, align 8
  %8 = load i64, i64* @HW_ICOLL_PRIORITYn, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* %2, align 4
  %11 = udiv i32 %10, 4
  %12 = mul i32 %11, 16
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = call i32 @stmp3xxx_clearl(i32 %6, i64 %14)
  %16 = load i64, i64* @REGS_ICOLL_BASE, align 8
  %17 = load i64, i64* @HW_ICOLL_LEVELACK, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @__raw_writel(i32 1, i64 %18)
  %20 = load i64, i64* @REGS_ICOLL_BASE, align 8
  %21 = load i64, i64* @HW_ICOLL_STAT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @__raw_readl(i64 %22)
  ret void
}

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
