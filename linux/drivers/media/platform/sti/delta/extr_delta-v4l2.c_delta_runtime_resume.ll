; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.delta_dev = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"failed to prepare/enable delta clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @delta_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.delta_dev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.delta_dev* @dev_get_drvdata(%struct.device* %4)
  store %struct.delta_dev* %5, %struct.delta_dev** %3, align 8
  %6 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %7 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %12 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @clk_prepare_enable(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @dev_warn(%struct.device* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  br label %20

20:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local %struct.delta_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clk_prepare_enable(i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
