; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770_platform.c_cc770_get_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770_platform.c_cc770_get_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cc770_priv = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cc770_platform_data = type { i32, i32, i32, i32 }

@CPUIF_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.cc770_priv*)* @cc770_get_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_get_platform_data(%struct.platform_device* %0, %struct.cc770_priv* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cc770_priv*, align 8
  %5 = alloca %struct.cc770_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.cc770_priv* %1, %struct.cc770_priv** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.cc770_platform_data* @dev_get_platdata(i32* %7)
  store %struct.cc770_platform_data* %8, %struct.cc770_platform_data** %5, align 8
  %9 = load %struct.cc770_platform_data*, %struct.cc770_platform_data** %5, align 8
  %10 = getelementptr inbounds %struct.cc770_platform_data, %struct.cc770_platform_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %13 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %17 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CPUIF_DSC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %24 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.cc770_platform_data*, %struct.cc770_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.cc770_platform_data, %struct.cc770_platform_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %34 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cc770_platform_data*, %struct.cc770_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.cc770_platform_data, %struct.cc770_platform_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %39 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cc770_platform_data*, %struct.cc770_platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.cc770_platform_data, %struct.cc770_platform_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %44 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  ret i32 0
}

declare dso_local %struct.cc770_platform_data* @dev_get_platdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
