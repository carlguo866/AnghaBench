; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_plot_def.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_plot_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"className\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"chartType\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"chartReverse\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"redrawOnExpand\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"d3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*, i32, i32)* @print_plot_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_plot_def(i32* %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 2
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %14, %5
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @fpskeysval(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 0)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @fpskeysval(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 0)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @chart2str(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fpskeysval(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34, i32 0)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @fpskeyival(i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %39, i32 0)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @fpskeyival(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44, i32 0)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @fpopen_obj_attr(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @print_d3_chart_def(i32* %49, i32* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fpclose_obj(i32* %54, i32 %55, i32 1)
  ret void
}

declare dso_local i32 @fpskeysval(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @chart2str(i32) #1

declare dso_local i32 @fpskeyival(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @fpopen_obj_attr(i32*, i8*, i32) #1

declare dso_local i32 @print_d3_chart_def(i32*, i32*, i32, i32) #1

declare dso_local i32 @fpclose_obj(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
