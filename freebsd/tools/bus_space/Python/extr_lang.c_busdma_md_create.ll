; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/Python/extr_lang.c_busdma_md_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/Python/extr_lang.c_busdma_md_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"iI\00", align 1
@PyExc_IOError = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @busdma_md_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @busdma_md_create(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @PyArg_ParseTuple(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @bd_md_create(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @PyExc_IOError, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @PyErr_SetString(i32 %21, i32 %23)
  store i32* null, i32** %3, align 8
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32* %27, i32** %3, align 8
  br label %28

28:                                               ; preds = %25, %20, %13
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @bd_md_create(i32, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
