; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_select_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_select_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_encoder*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_audio_select_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_select_pin(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %4)
  store %struct.radeon_encoder* %5, %struct.radeon_encoder** %3, align 8
  %6 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)** %14, align 8
  %16 = icmp ne i32 (%struct.drm_encoder*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)** %21, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %24 = call i32 %22(%struct.drm_encoder* %23)
  br label %25

25:                                               ; preds = %17, %10, %1
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
