; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c_sdw_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c_sdw_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.sdw_slave = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @sdw_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.sdw_slave*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.sdw_slave* @dev_to_sdw_dev(%struct.device* %8)
  store %struct.sdw_slave* %9, %struct.sdw_slave** %6, align 8
  %10 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %12 = call i32 @sdw_slave_modalias(%struct.sdw_slave* %10, i8* %11, i32 32)
  %13 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %15 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.sdw_slave* @dev_to_sdw_dev(%struct.device*) #1

declare dso_local i32 @sdw_slave_modalias(%struct.sdw_slave*, i8*, i32) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
