; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_get_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_get_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.imx_thermal_data* }
%struct.imx_thermal_data = type { i32, i32 }

@IMX_TRIP_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @imx_get_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_get_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.imx_thermal_data*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 0
  %10 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %9, align 8
  store %struct.imx_thermal_data* %10, %struct.imx_thermal_data** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IMX_TRIP_PASSIVE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %7, align 8
  %16 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %7, align 8
  %20 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
