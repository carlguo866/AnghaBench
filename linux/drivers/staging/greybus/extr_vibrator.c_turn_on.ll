; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_turn_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_turn_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_vibrator_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }

@GB_VIBRATOR_TYPE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_vibrator_device*, i32)* @turn_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turn_on(%struct.gb_vibrator_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_vibrator_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_bundle*, align 8
  %7 = alloca i32, align 4
  store %struct.gb_vibrator_device* %0, %struct.gb_vibrator_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %4, align 8
  %9 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %11, align 8
  store %struct.gb_bundle* %12, %struct.gb_bundle** %6, align 8
  %13 = load %struct.gb_bundle*, %struct.gb_bundle** %6, align 8
  %14 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %4, align 8
  %21 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %20, i32 0, i32 0
  %22 = call i64 @cancel_delayed_work_sync(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %4, align 8
  %26 = call i32 @turn_off(%struct.gb_vibrator_device* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %4, align 8
  %29 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* @GB_VIBRATOR_TYPE_ON, align 4
  %32 = call i32 @gb_operation_sync(%struct.TYPE_2__* %30, i32 %31, i32* null, i32 0, i32* null, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.gb_bundle*, %struct.gb_bundle** %6, align 8
  %37 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %27
  %40 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %4, align 8
  %41 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i32 @schedule_delayed_work(i32* %41, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %35, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @turn_off(%struct.gb_vibrator_device*) #1

declare dso_local i32 @gb_operation_sync(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
