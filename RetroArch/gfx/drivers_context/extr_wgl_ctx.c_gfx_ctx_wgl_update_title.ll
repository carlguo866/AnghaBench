; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wgl_ctx.c_gfx_ctx_wgl_update_title.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wgl_ctx.c_gfx_ctx_wgl_update_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i8*)* }

@main_window = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @gfx_ctx_wgl_update_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_wgl_update_title(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %12 = call i32 @video_driver_get_window_title(i8* %11, i32 128)
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %14 = load i8, i8* %13, align 16
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = call %struct.TYPE_3__* (...) @ui_companion_driver_get_window_ptr()
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %22, align 8
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %25 = call i32 %23(i32* @main_window, i8* %24)
  br label %26

26:                                               ; preds = %20, %16
  br label %27

27:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @video_driver_get_window_title(i8*, i32) #1

declare dso_local %struct.TYPE_3__* @ui_companion_driver_get_window_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
