; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-gpio.c_bttv_sub_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-gpio.c_bttv_sub_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.bttv_sub_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @bttv_sub_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_sub_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.bttv_sub_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %9 = call %struct.bttv_sub_driver* @to_bttv_sub_drv(%struct.device_driver* %8)
  store %struct.bttv_sub_driver* %9, %struct.bttv_sub_driver** %6, align 8
  %10 = load %struct.bttv_sub_driver*, %struct.bttv_sub_driver** %6, align 8
  %11 = getelementptr inbounds %struct.bttv_sub_driver, %struct.bttv_sub_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strlen(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_name(%struct.device* %14)
  %16 = load %struct.bttv_sub_driver*, %struct.bttv_sub_driver** %6, align 8
  %17 = getelementptr inbounds %struct.bttv_sub_driver, %struct.bttv_sub_driver* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @strncmp(i32 %15, i32 %18, i32 %19)
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.bttv_sub_driver* @to_bttv_sub_drv(%struct.device_driver*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
