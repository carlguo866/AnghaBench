; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_get_group.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_get_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @obs_sceneitem_get_group(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %9, %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %27

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @full_lock(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call %struct.TYPE_6__* @get_sceneitem_parent_group(i32* %21, %struct.TYPE_6__* %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @full_unlock(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %3, align 8
  br label %27

27:                                               ; preds = %18, %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %28
}

declare dso_local i32 @full_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @get_sceneitem_parent_group(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @full_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
