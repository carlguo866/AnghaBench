; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_open_mutex_plus_id.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_open_mutex_plus_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 37, i32 108, i32 117, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*, i32*, i32)* @open_mutex_plus_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_mutex_plus_id(%struct.game_capture* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.game_capture*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  store %struct.game_capture* %0, %struct.game_capture** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @_snwprintf(i32* %8, i32 64, i8* bitcast ([6 x i32]* @.str to i8*), i32* %9, i32 %10)
  %12 = load %struct.game_capture*, %struct.game_capture** %4, align 8
  %13 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.game_capture*, %struct.game_capture** %4, align 8
  %18 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %21 = call i32 @open_app_mutex(i32 %19, i32* %20)
  br label %25

22:                                               ; preds = %3
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %24 = call i32 @open_mutex(i32* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %21, %16 ], [ %24, %22 ]
  ret i32 %26
}

declare dso_local i32 @_snwprintf(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @open_app_mutex(i32, i32*) #1

declare dso_local i32 @open_mutex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
