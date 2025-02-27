; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.macio_dev = type { i32 }
%struct.macio_driver = type { %struct.of_device_id* }
%struct.of_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @macio_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.macio_dev*, align 8
  %7 = alloca %struct.macio_driver*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.macio_dev* @to_macio_device(%struct.device* %9)
  store %struct.macio_dev* %10, %struct.macio_dev** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.macio_driver* @to_macio_driver(%struct.device_driver* %11)
  store %struct.macio_driver* %12, %struct.macio_driver** %7, align 8
  %13 = load %struct.macio_driver*, %struct.macio_driver** %7, align 8
  %14 = getelementptr inbounds %struct.macio_driver, %struct.macio_driver* %13, i32 0, i32 0
  %15 = load %struct.of_device_id*, %struct.of_device_id** %14, align 8
  store %struct.of_device_id* %15, %struct.of_device_id** %8, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %17 = icmp ne %struct.of_device_id* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %21 = load %struct.macio_dev*, %struct.macio_dev** %6, align 8
  %22 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %21, i32 0, i32 0
  %23 = call i32* @of_match_device(%struct.of_device_id* %20, i32* %22)
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.macio_dev* @to_macio_device(%struct.device*) #1

declare dso_local %struct.macio_driver* @to_macio_driver(%struct.device_driver*) #1

declare dso_local i32* @of_match_device(%struct.of_device_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
