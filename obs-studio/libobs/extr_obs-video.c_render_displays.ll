; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_displays.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_displays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.obs_display*, i32 }
%struct.obs_display = type { %struct.obs_display* }
%struct.TYPE_4__ = type { i32 }

@obs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @render_displays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_displays() #0 {
  %1 = alloca %struct.obs_display*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %37

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @gs_enter_context(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.obs_display*, %struct.obs_display** %20, align 8
  store %struct.obs_display* %21, %struct.obs_display** %1, align 8
  br label %22

22:                                               ; preds = %25, %8
  %23 = load %struct.obs_display*, %struct.obs_display** %1, align 8
  %24 = icmp ne %struct.obs_display* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.obs_display*, %struct.obs_display** %1, align 8
  %27 = call i32 @render_display(%struct.obs_display* %26)
  %28 = load %struct.obs_display*, %struct.obs_display** %1, align 8
  %29 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %28, i32 0, i32 0
  %30 = load %struct.obs_display*, %struct.obs_display** %29, align 8
  store %struct.obs_display* %30, %struct.obs_display** %1, align 8
  br label %22

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = call i32 (...) @gs_leave_context()
  br label %37

37:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @gs_enter_context(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @render_display(%struct.obs_display*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @gs_leave_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
