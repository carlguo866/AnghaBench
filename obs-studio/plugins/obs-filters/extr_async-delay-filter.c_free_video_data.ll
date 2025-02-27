; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_free_video_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_free_video_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_delay_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.obs_source_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_delay_data*, i32*)* @free_video_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_video_data(%struct.async_delay_data* %0, i32* %1) #0 {
  %3 = alloca %struct.async_delay_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_source_frame*, align 8
  store %struct.async_delay_data* %0, %struct.async_delay_data** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.async_delay_data*, %struct.async_delay_data** %3, align 8
  %8 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.async_delay_data*, %struct.async_delay_data** %3, align 8
  %14 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %13, i32 0, i32 0
  %15 = call i32 @circlebuf_pop_front(%struct.TYPE_2__* %14, %struct.obs_source_frame** %5, i32 8)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %18 = call i32 @obs_source_release_frame(i32* %16, %struct.obs_source_frame* %17)
  br label %6

19:                                               ; preds = %6
  ret void
}

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_2__*, %struct.obs_source_frame**, i32) #1

declare dso_local i32 @obs_source_release_frame(i32*, %struct.obs_source_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
