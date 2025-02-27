; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gameport = type { i32 }
%struct.gameport_driver = type { i32 (%struct.gameport.0*, %struct.gameport_driver*)* }
%struct.gameport.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gameport_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gameport_driver_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca %struct.gameport_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.gameport* @to_gameport_port(%struct.device* %5)
  store %struct.gameport* %6, %struct.gameport** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.gameport_driver* @to_gameport_driver(i32 %9)
  store %struct.gameport_driver* %10, %struct.gameport_driver** %4, align 8
  %11 = load %struct.gameport_driver*, %struct.gameport_driver** %4, align 8
  %12 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.gameport.0*, %struct.gameport_driver*)*, i32 (%struct.gameport.0*, %struct.gameport_driver*)** %12, align 8
  %14 = load %struct.gameport*, %struct.gameport** %3, align 8
  %15 = bitcast %struct.gameport* %14 to %struct.gameport.0*
  %16 = load %struct.gameport_driver*, %struct.gameport_driver** %4, align 8
  %17 = call i32 %13(%struct.gameport.0* %15, %struct.gameport_driver* %16)
  %18 = load %struct.gameport*, %struct.gameport** %3, align 8
  %19 = getelementptr inbounds %struct.gameport, %struct.gameport* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  ret i32 %27
}

declare dso_local %struct.gameport* @to_gameport_port(%struct.device*) #1

declare dso_local %struct.gameport_driver* @to_gameport_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
