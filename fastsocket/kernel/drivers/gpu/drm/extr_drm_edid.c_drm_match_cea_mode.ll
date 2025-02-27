; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_match_cea_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_match_cea_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@edid_cea_modes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_match_cea_mode(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i64, i64* %5, align 8
  %8 = load i32*, i32** @edid_cea_modes, align 8
  %9 = call i64 @ARRAY_SIZE(i32* %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load i32*, i32** @edid_cea_modes, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = bitcast i32* %14 to %struct.drm_display_mode*
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %4, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = call i64 @drm_mode_equal(%struct.drm_display_mode* %16, %struct.drm_display_mode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %2, align 8
  br label %28

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  store i64 0, i64* %2, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @drm_mode_equal(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
