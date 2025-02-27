; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.synaptics_i2c = type { i32, i32 }

@polling_req = common dso_local global i64 0, align 8
@system_wq = common dso_local global i32 0, align 4
@NO_DATA_SLEEP_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @synaptics_i2c_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synaptics_i2c_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.synaptics_i2c*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.synaptics_i2c* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.synaptics_i2c* %7, %struct.synaptics_i2c** %4, align 8
  %8 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %9 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @synaptics_i2c_reset_config(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i64, i64* @polling_req, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @system_wq, align 4
  %21 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %22 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %21, i32 0, i32 0
  %23 = load i32, i32* @NO_DATA_SLEEP_MSECS, align 4
  %24 = call i32 @msecs_to_jiffies(i32 %23)
  %25 = call i32 @mod_delayed_work(i32 %20, i32* %22, i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.synaptics_i2c* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @synaptics_i2c_reset_config(i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
