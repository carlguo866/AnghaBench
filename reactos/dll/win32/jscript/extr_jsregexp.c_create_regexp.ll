; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_create_regexp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_create_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"regexp_new failed\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_regexp(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @jsstr_flatten(i32* %13)
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %5, align 4
  br label %69

19:                                               ; preds = %4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @jsstr_length(i32* %21)
  %23 = call i32 @debugstr_wn(i32* %20, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = call i32 @alloc_regexp(%struct.TYPE_7__* %26, i32* null, %struct.TYPE_8__** %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %69

33:                                               ; preds = %19
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @jsstr_addref(i32* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = call i32 @jsval_number(i32 0)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @jsstr_length(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @regexp_new(%struct.TYPE_7__* %41, i32* %43, i32* %44, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %33
  %59 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @jsdisp_release(i32* %61)
  %63 = load i32, i32* @E_FAIL, align 4
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %33
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %9, align 8
  store i32* %66, i32** %67, align 8
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %58, %31, %17
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @alloc_regexp(%struct.TYPE_7__*, i32*, %struct.TYPE_8__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @jsstr_addref(i32*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @regexp_new(%struct.TYPE_7__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
