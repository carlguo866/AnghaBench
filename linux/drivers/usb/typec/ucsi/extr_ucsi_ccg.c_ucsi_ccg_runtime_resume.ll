; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ucsi_ccg_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ucsi_ccg_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ucsi_ccg = type { i64, i64, i32 }

@CCG_FW_BUILD_NVIDIA = common dso_local global i64 0, align 8
@CCG_OLD_FW_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ucsi_ccg_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_ccg_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ucsi_ccg*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.ucsi_ccg* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.ucsi_ccg* %8, %struct.ucsi_ccg** %4, align 8
  %9 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %10 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CCG_FW_BUILD_NVIDIA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %16 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CCG_OLD_FW_VERSION, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %22 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %21, i32 0, i32 2
  %23 = call i32 @schedule_work(i32* %22)
  br label %24

24:                                               ; preds = %20, %14, %1
  ret i32 0
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ucsi_ccg* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
