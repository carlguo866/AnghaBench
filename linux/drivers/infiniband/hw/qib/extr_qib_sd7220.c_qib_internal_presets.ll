; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_internal_presets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_internal_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@dds_init_vals = common dso_local global i64 0, align 8
@DDS_3M = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to set default DDS values\0A\00", align 1
@qib_rxeq_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set default RXEQ values\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_internal_presets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_internal_presets(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = load i64, i64* @dds_init_vals, align 8
  %6 = load i64, i64* @DDS_3M, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @set_dds_vals(%struct.qib_devdata* %4, i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = call i32 @qib_dev_err(%struct.qib_devdata* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = load i32, i32* @qib_rxeq_set, align 4
  %17 = and i32 %16, 3
  %18 = call i32 @set_rxeq_vals(%struct.qib_devdata* %15, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = call i32 @qib_dev_err(%struct.qib_devdata* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @set_dds_vals(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @set_rxeq_vals(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
