; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_pmic_uv_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_pmic_uv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }
%struct.regulator_dev = type { i32 }

@WM8350_IRQ_CS1 = common dso_local global i32 0, align 4
@WM8350_IRQ_CS2 = common dso_local global i32 0, align 4
@REGULATOR_EVENT_REGULATION_OUT = common dso_local global i32 0, align 4
@REGULATOR_EVENT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*, i32, i8*)* @pmic_uv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmic_uv_handler(%struct.wm8350* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.regulator_dev*
  store %struct.regulator_dev* %9, %struct.regulator_dev** %7, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %11 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WM8350_IRQ_CS1, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WM8350_IRQ_CS2, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %3
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %22 = load i32, i32* @REGULATOR_EVENT_REGULATION_OUT, align 4
  %23 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %24 = call i32 @regulator_notifier_call_chain(%struct.regulator_dev* %21, i32 %22, %struct.wm8350* %23)
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %27 = load i32, i32* @REGULATOR_EVENT_UNDER_VOLTAGE, align 4
  %28 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %29 = call i32 @regulator_notifier_call_chain(%struct.regulator_dev* %26, i32 %27, %struct.wm8350* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_notifier_call_chain(%struct.regulator_dev*, i32, %struct.wm8350*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
