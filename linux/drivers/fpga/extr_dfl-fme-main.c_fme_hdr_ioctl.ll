; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-main.c_fme_hdr_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-main.c_fme_hdr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dfl_feature = type { i32 }
%struct.dfl_feature_platform_data = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.platform_device*, %struct.dfl_feature*, i32, i64)* @fme_hdr_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fme_hdr_ioctl(%struct.platform_device* %0, %struct.dfl_feature* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dfl_feature*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dfl_feature_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.dfl_feature* %1, %struct.dfl_feature** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.dfl_feature_platform_data* @dev_get_platdata(i32* %12)
  store %struct.dfl_feature_platform_data* %13, %struct.dfl_feature_platform_data** %10, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %23 [
    i32 128, label %15
    i32 129, label %19
  ]

15:                                               ; preds = %4
  %16 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @fme_hdr_ioctl_release_port(%struct.dfl_feature_platform_data* %16, i64 %17)
  store i64 %18, i64* %5, align 8
  br label %26

19:                                               ; preds = %4
  %20 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @fme_hdr_ioctl_assign_port(%struct.dfl_feature_platform_data* %20, i64 %21)
  store i64 %22, i64* %5, align 8
  br label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @ENODEV, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %23, %19, %15
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

declare dso_local %struct.dfl_feature_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @fme_hdr_ioctl_release_port(%struct.dfl_feature_platform_data*, i64) #1

declare dso_local i64 @fme_hdr_ioctl_assign_port(%struct.dfl_feature_platform_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
