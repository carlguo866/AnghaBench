; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-port/default/extr_default-module.c_jerry_port_read_source.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-port/default/extr_default-module.c_jerry_port_read_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error: failed to open file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Error: failed to allocate memory for module\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error: failed to read file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @jerry_port_read_source(i8* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32* null, i32** %3, align 8
  br label %52

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @jerry_port_get_file_size(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @malloc(i64 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @fclose(i32* %27)
  %29 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %30 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %52

31:                                               ; preds = %18
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @fread(i32* %32, i32 1, i64 %33, i32* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32* null, i32** %3, align 8
  br label %52

46:                                               ; preds = %31
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i64, i64* %9, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32*, i32** %8, align 8
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %46, %38, %26, %14
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @jerry_port_log(i32, i8*, ...) #1

declare dso_local i64 @jerry_port_get_file_size(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
