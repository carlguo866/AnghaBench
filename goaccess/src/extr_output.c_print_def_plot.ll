; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_plot.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_plot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }

@conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"plot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @print_def_plot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_def_plot(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = call i32 @count_plot_fp(%struct.TYPE_6__* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @conf, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @fpopen_arr_attr(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %57, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @fpopen_obj(i32* %26, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (i32*, {}*, i32)**
  %37 = load i32 (i32*, {}*, i32)*, i32 (i32*, {}*, i32)** %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %47 = load {}*, {}** %46, align 8
  %48 = call i32 %37(i32* %38, {}* %47, i32 %45)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @fpclose_obj(i32* %49, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %25
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @fpclose_arr(i32* %61, i32 %62, i32 0)
  ret void
}

declare dso_local i32 @count_plot_fp(%struct.TYPE_6__*) #1

declare dso_local i32 @fpopen_arr_attr(i32*, i8*, i32) #1

declare dso_local i32 @fpopen_obj(i32*, i32) #1

declare dso_local i32 @fpclose_obj(i32*, i32, i32) #1

declare dso_local i32 @fpclose_arr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
