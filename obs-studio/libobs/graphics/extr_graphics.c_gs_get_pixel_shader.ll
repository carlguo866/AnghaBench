; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_get_pixel_shader.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_get_pixel_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* (i32)* }

@thread_graphics = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"gs_get_pixel_shader\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gs_get_pixel_shader() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @gs_valid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %16

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32* (i32)*, i32* (i32)** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32* %11(i32 %14)
  store i32* %15, i32** %1, align 8
  br label %16

16:                                               ; preds = %7, %6
  %17 = load i32*, i32** %1, align 8
  ret i32* %17
}

declare dso_local i32 @gs_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
