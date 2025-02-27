; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_poweroff_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_poweroff_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arche_platform_drvdata = type { i64, i32, i32, i32, i32, i32 }

@ARCHE_PLATFORM_STATE_OFF = common dso_local global i64 0, align 8
@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@WD_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arche_platform_drvdata*)* @arche_platform_poweroff_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arche_platform_poweroff_seq(%struct.arche_platform_drvdata* %0) #0 {
  %2 = alloca %struct.arche_platform_drvdata*, align 8
  %3 = alloca i64, align 8
  store %struct.arche_platform_drvdata* %0, %struct.arche_platform_drvdata** %2, align 8
  %4 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %12 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %18 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @disable_irq(i32 %19)
  %21 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %22 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %21, i32 0, i32 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %26 = load i32, i32* @WD_STATE_IDLE, align 4
  %27 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %25, i32 %26)
  %28 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %29 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %28, i32 0, i32 4
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %16, %10
  %33 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %34 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  %37 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %38 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %41 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @svc_reset_onoff(i32 %39, i32 %42)
  %44 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %2, align 8
  %45 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %46 = call i32 @arche_platform_set_state(%struct.arche_platform_drvdata* %44, i64 %45)
  br label %47

47:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @svc_reset_onoff(i32, i32) #1

declare dso_local i32 @arche_platform_set_state(%struct.arche_platform_drvdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
