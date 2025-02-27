; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_rtc_update_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8925.c_rtc_update_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_rtc_info = type { i32, i32 }

@MAX8925_ALARM0_CNTL = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtc_update_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_update_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max8925_rtc_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.max8925_rtc_info*
  store %struct.max8925_rtc_info* %7, %struct.max8925_rtc_info** %5, align 8
  %8 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %9 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAX8925_ALARM0_CNTL, align 4
  %12 = call i32 @max8925_set_bits(i32 %10, i32 %11, i32 127, i32 0)
  %13 = load %struct.max8925_rtc_info*, %struct.max8925_rtc_info** %5, align 8
  %14 = getelementptr inbounds %struct.max8925_rtc_info, %struct.max8925_rtc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RTC_IRQF, align 4
  %17 = load i32, i32* @RTC_AF, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @rtc_update_irq(i32 %15, i32 1, i32 %18)
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %20
}

declare dso_local i32 @max8925_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
