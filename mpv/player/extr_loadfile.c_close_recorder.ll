; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_close_recorder.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_close_recorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_recorder(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_track_recorder_sink(i32 %23, i32* null)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @mp_recorder_destroy(i32* %31)
  %33 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %8
  ret void
}

declare dso_local i32 @set_track_recorder_sink(i32, i32*) #1

declare dso_local i32 @mp_recorder_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
