; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_window.c_Resize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_window.c_Resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @Resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Resize(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GWL_STYLE, align 4
  %21 = call i32 @GetWindowLong(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @AdjustWindowRect(%struct.TYPE_10__* %8, i32 %22, i32 0)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %struct.TYPE_10__* %8 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call i32 @RECTWidth(i64 %28)
  %30 = bitcast %struct.TYPE_10__* %8 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @RECTHeight(i64 %31)
  %33 = load i32, i32* @SWP_NOZORDER, align 4
  %34 = load i32, i32* @SWP_NOMOVE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SetWindowPos(i32 %26, i32 0, i32 0, i32 0, i32 %29, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @GetWindowLong(i32, i32) #1

declare dso_local i32 @AdjustWindowRect(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RECTWidth(i64) #1

declare dso_local i32 @RECTHeight(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
