; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_get_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.obs_transform_info = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_get_info(%struct.TYPE_3__* %0, %struct.obs_transform_info* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.obs_transform_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.obs_transform_info* %1, %struct.obs_transform_info** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %46

7:                                                ; preds = %2
  %8 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %9 = icmp ne %struct.obs_transform_info* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %15 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %20 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %25 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %30 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %35 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %40 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.obs_transform_info*, %struct.obs_transform_info** %4, align 8
  %45 = getelementptr inbounds %struct.obs_transform_info, %struct.obs_transform_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %10, %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
