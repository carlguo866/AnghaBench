; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_cntr_rld_event_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_cntr_rld_event_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, %struct.etm_config }
%struct.etm_config = type { i64*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cntr_rld_event_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cntr_rld_event_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.etm_drvdata*, align 8
  %9 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %12)
  store %struct.etm_drvdata* %13, %struct.etm_drvdata** %8, align 8
  %14 = load %struct.etm_drvdata*, %struct.etm_drvdata** %8, align 8
  %15 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %14, i32 0, i32 1
  store %struct.etm_config* %15, %struct.etm_config** %9, align 8
  %16 = load %struct.etm_drvdata*, %struct.etm_drvdata** %8, align 8
  %17 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.etm_config*, %struct.etm_config** %9, align 8
  %20 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.etm_config*, %struct.etm_config** %9, align 8
  %23 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.etm_drvdata*, %struct.etm_drvdata** %8, align 8
  %28 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %31)
  ret i32 %32
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
