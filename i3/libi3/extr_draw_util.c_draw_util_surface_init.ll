; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_draw_util.c_draw_util_surface_init.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_draw_util.c_draw_util_surface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@visual_type = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [77 x i8] c"Could not create graphical context. Error code: %d. Please report this bug.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_util_surface_init(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** @visual_type, align 8
  br label %24

22:                                               ; preds = %6
  %23 = load i32*, i32** %10, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32* [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @xcb_generate_id(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @xcb_create_gc_checked(i32* %38, i32 %41, i32 %44, i32 0, i32* null)
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.TYPE_5__* @xcb_request_check(i32* %46, i32 %47)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %14, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %24
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ELOG(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %24
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @cairo_xcb_surface_create(i32* %57, i32 %60, i32* %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @cairo_create(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local i32 @xcb_generate_id(i32*) #1

declare dso_local i32 @xcb_create_gc_checked(i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @xcb_request_check(i32*, i32) #1

declare dso_local i32 @ELOG(i8*, i32) #1

declare dso_local i32 @cairo_xcb_surface_create(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @cairo_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
