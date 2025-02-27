; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_video_timing_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_video_timing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64 }

@VIDEO_TIMING_FROM_CAPTURE = common dso_local global i64 0, align 8
@ANALOGIX_DP_VIDEO_CTL_10 = common dso_local global i64 0, align 8
@FORMAT_SEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_set_video_timing_mode(%struct.analogix_dp_device* %0, i64 %1) #0 {
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @VIDEO_TIMING_FROM_CAPTURE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @FORMAT_SEL, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %22 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i64 %20, i64 %25)
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %29 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @readl(i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* @FORMAT_SEL, align 8
  %35 = load i64, i64* %5, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %39 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i64 %37, i64 %42)
  br label %44

44:                                               ; preds = %27, %9
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
