; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_make_unique_dest.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_make_unique_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/%s (%d).%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*)* @make_unique_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_unique_dest(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_7__* @g_string_new(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call i32 (%struct.TYPE_7__*, i8*, i32*, i32, i32, ...) @g_string_printf(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %28, %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %26 = call i64 @g_file_test(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 (%struct.TYPE_7__*, i8*, i32*, i32, i32, ...) @g_string_printf(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %30, i32 %33, i32 %35, i32* %36)
  br label %21

38:                                               ; preds = %21
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @g_string_append_printf(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @g_string_free(%struct.TYPE_7__* %46, i32 %47)
  ret void
}

declare dso_local %struct.TYPE_7__* @g_string_new(i32) #1

declare dso_local i32 @g_string_printf(%struct.TYPE_7__*, i8*, i32*, i32, i32, ...) #1

declare dso_local i64 @g_file_test(i32, i32) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
