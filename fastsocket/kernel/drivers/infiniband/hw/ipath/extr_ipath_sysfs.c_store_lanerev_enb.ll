; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_lanerev_enb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_lanerev_enb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32 (%struct.ipath_devdata*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"attempt to set invalid Lane reversal (enable)\0A\00", align 1
@IPATH_IB_CFG_LREV_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_lanerev_enb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_lanerev_enb(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipath_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %13)
  store %struct.ipath_devdata* %14, %struct.ipath_devdata** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @ipath_parse_ushort(i8* %15, i32* %12)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %26 = call i32 @ipath_dev_err(%struct.ipath_devdata* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %40

27:                                               ; preds = %19, %4
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 0
  %30 = load i32 (%struct.ipath_devdata*, i32, i32)*, i32 (%struct.ipath_devdata*, i32, i32)** %29, align 8
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %32 = load i32, i32* @IPATH_IB_CFG_LREV_ENB, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 %30(%struct.ipath_devdata* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ipath_parse_ushort(i8*, i32*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
