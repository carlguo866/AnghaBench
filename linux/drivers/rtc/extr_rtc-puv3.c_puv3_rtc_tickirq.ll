; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-puv3.c_puv3_rtc_tickirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-puv3.c_puv3_rtc_tickirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32 }

@RTC_RTSR = common dso_local global i32 0, align 4
@RTC_RTSR_HZ = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @puv3_rtc_tickirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_rtc_tickirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtc_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rtc_device*
  store %struct.rtc_device* %7, %struct.rtc_device** %5, align 8
  %8 = load i32, i32* @RTC_RTSR, align 4
  %9 = call i32 @readl(i32 %8)
  %10 = load i32, i32* @RTC_RTSR_HZ, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RTC_RTSR, align 4
  %13 = call i32 @writel(i32 %11, i32 %12)
  %14 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %15 = load i32, i32* @RTC_PF, align 4
  %16 = load i32, i32* @RTC_IRQF, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @rtc_update_irq(%struct.rtc_device* %14, i32 1, i32 %17)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %19
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
