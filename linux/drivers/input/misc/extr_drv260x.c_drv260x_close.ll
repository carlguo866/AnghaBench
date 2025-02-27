; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.drv260x_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DRV260X_MODE = common dso_local global i32 0, align 4
@DRV260X_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to enter standby mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @drv260x_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv260x_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.drv260x_data*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.drv260x_data* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.drv260x_data* %6, %struct.drv260x_data** %3, align 8
  %7 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %8 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %7, i32 0, i32 3
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %11 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DRV260X_MODE, align 4
  %14 = load i32, i32* @DRV260X_STANDBY, align 4
  %15 = call i32 @regmap_write(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %20 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.drv260x_data*, %struct.drv260x_data** %3, align 8
  %27 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gpiod_set_value(i32 %28, i32 0)
  ret void
}

declare dso_local %struct.drv260x_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
