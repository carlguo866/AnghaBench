; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_start_drawing_advanced.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_start_drawing_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@_vita2d_context = common dso_local global i32 0, align 4
@renderTarget = common dso_local global i32 0, align 4
@displayBufferSync = common dso_local global i32** null, align 8
@backBufferIndex = common dso_local global i64 0, align 8
@displaySurface = common dso_local global i32* null, align 8
@depthSurface = common dso_local global i32 0, align 4
@drawing = common dso_local global i32 0, align 4
@clipping_enabled = common dso_local global i64 0, align 8
@clip_rect_x_min = common dso_local global i32 0, align 4
@clip_rect_y_min = common dso_local global i32 0, align 4
@clip_rect_x_max = common dso_local global i32 0, align 4
@clip_rect_y_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_start_drawing_advanced(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i32, i32* @_vita2d_context, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @renderTarget, align 4
  %11 = load i32**, i32*** @displayBufferSync, align 8
  %12 = load i64, i64* @backBufferIndex, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** @displaySurface, align 8
  %16 = load i64, i64* @backBufferIndex, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @sceGxmBeginScene(i32 %8, i32 %9, i32 %10, i32* null, i32* null, i32* %14, i32* %17, i32* @depthSurface)
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @_vita2d_context, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @sceGxmBeginScene(i32 %20, i32 %21, i32 %24, i32* null, i32* null, i32* null, i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %19, %7
  store i32 1, i32* @drawing, align 4
  %31 = load i64, i64* @clipping_enabled, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @clip_rect_x_min, align 4
  %35 = load i32, i32* @clip_rect_y_min, align 4
  %36 = load i32, i32* @clip_rect_x_max, align 4
  %37 = load i32, i32* @clip_rect_y_max, align 4
  %38 = call i32 @vita2d_set_clip_rectangle(i32 %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @sceGxmBeginScene(i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vita2d_set_clip_rectangle(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
