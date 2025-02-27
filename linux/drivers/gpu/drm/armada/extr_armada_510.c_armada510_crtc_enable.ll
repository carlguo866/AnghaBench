; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_510.c_armada510_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_510.c_armada510_crtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_crtc = type { i64, %struct.armada510_variant_data* }
%struct.armada510_variant_data = type { i64 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada_crtc*, %struct.drm_display_mode*)* @armada510_crtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada510_crtc_enable(%struct.armada_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.armada_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.armada510_variant_data*, align 8
  store %struct.armada_crtc* %0, %struct.armada_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %6 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %6, i32 0, i32 1
  %8 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %7, align 8
  store %struct.armada510_variant_data* %8, %struct.armada510_variant_data** %5, align 8
  %9 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %5, align 8
  %15 = getelementptr inbounds %struct.armada510_variant_data, %struct.armada510_variant_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %5, align 8
  %20 = getelementptr inbounds %struct.armada510_variant_data, %struct.armada510_variant_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @clk_prepare_enable(i64 %21)
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %5, align 8
  %27 = getelementptr inbounds %struct.armada510_variant_data, %struct.armada510_variant_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %13, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
