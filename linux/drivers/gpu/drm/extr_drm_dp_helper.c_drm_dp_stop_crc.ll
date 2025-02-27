; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_stop_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_stop_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32*, i32 }

@DP_TEST_SINK = common dso_local global i32 0, align 4
@DP_TEST_SINK_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_stop_crc(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  %6 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %7 = load i32, i32* @DP_TEST_SINK, align 4
  %8 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %6, i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %15 = load i32, i32* @DP_TEST_SINK, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DP_TEST_SINK_START, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %14, i32 %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %13
  %26 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %27 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %26, i32 0, i32 1
  %28 = call i32 @flush_work(i32* %27)
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %30 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %23, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
