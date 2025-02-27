; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_lane_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_lane_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*, i32)* @analogix_dp_get_lane_link_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_get_lane_link_training(%struct.analogix_dp_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %20 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
  ]

8:                                                ; preds = %2
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %10 = call i32 @analogix_dp_get_lane0_link_training(%struct.analogix_dp_device* %9)
  store i32 %10, i32* %6, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %13 = call i32 @analogix_dp_get_lane1_link_training(%struct.analogix_dp_device* %12)
  store i32 %13, i32* %6, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %16 = call i32 @analogix_dp_get_lane2_link_training(%struct.analogix_dp_device* %15)
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %19 = call i32 @analogix_dp_get_lane3_link_training(%struct.analogix_dp_device* %18)
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %2
  %21 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %24

22:                                               ; preds = %17, %14, %11, %8
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @analogix_dp_get_lane0_link_training(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_get_lane1_link_training(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_get_lane2_link_training(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_get_lane3_link_training(%struct.analogix_dp_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
