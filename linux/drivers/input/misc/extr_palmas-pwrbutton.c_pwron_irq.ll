; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_palmas-pwrbutton.c_pwron_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_palmas-pwrbutton.c_pwron_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pwron = type { i32, %struct.input_dev* }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KEY_POWER = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@PALMAS_PWR_KEY_Q_TIME_MS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pwron_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwron_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.palmas_pwron*, align 8
  %6 = alloca %struct.input_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.palmas_pwron*
  store %struct.palmas_pwron* %8, %struct.palmas_pwron** %5, align 8
  %9 = load %struct.palmas_pwron*, %struct.palmas_pwron** %5, align 8
  %10 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %6, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %13 = load i32, i32* @KEY_POWER, align 4
  %14 = call i32 @input_report_key(%struct.input_dev* %12, i32 %13, i32 1)
  %15 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_wakeup_event(i32 %18, i32 0)
  %20 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %21 = call i32 @input_sync(%struct.input_dev* %20)
  %22 = load i32, i32* @system_wq, align 4
  %23 = load %struct.palmas_pwron*, %struct.palmas_pwron** %5, align 8
  %24 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %23, i32 0, i32 0
  %25 = load i32, i32* @PALMAS_PWR_KEY_Q_TIME_MS, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = call i32 @mod_delayed_work(i32 %22, i32* %24, i32 %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %28
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
