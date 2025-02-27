; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_clk*)* @soc_camera_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_camera_clk_disable(%struct.v4l2_clk* %0) #0 {
  %2 = alloca %struct.v4l2_clk*, align 8
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  store %struct.v4l2_clk* %0, %struct.v4l2_clk** %2, align 8
  %5 = load %struct.v4l2_clk*, %struct.v4l2_clk** %2, align 8
  %6 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %5, i32 0, i32 0
  %7 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  store %struct.soc_camera_device* %7, %struct.soc_camera_device** %3, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %9 = icmp ne %struct.soc_camera_device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %29

16:                                               ; preds = %10
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %19)
  store %struct.soc_camera_host* %20, %struct.soc_camera_host** %4, align 8
  %21 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %22 = call i32 @soc_camera_clock_stop(%struct.soc_camera_host* %21)
  %23 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %24 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @module_put(i32 %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @soc_camera_clock_stop(%struct.soc_camera_host*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
