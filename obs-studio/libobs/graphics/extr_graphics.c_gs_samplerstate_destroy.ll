; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_samplerstate_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_samplerstate_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"gs_samplerstate_destroy\00", align 1
@thread_graphics = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_samplerstate_destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @gs_valid(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %17

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_graphics, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 %14(i32* %15)
  br label %17

17:                                               ; preds = %10, %9, %5
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
