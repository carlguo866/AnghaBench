; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_snapshot.c_vout_snapshot_Set.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_snapshot.c_vout_snapshot_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_snapshot_Set(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %56

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  br label %21

21:                                               ; preds = %32, %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call %struct.TYPE_8__* @picture_Clone(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %49

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @video_format_CopyCrop(i32* %34, i32* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  br label %21

49:                                               ; preds = %31, %21
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = call i32 @vlc_cond_broadcast(i32* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = call i32 @vlc_mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @picture_Clone(%struct.TYPE_8__*) #1

declare dso_local i32 @video_format_CopyCrop(i32*, i32*) #1

declare dso_local i32 @vlc_cond_broadcast(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
