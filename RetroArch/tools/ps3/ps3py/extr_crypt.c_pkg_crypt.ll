; ModuleID = '/home/carl/AnghaBench/RetroArch/tools/ps3/ps3py/extr_crypt.c_pkg_crypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tools/ps3/ps3py/extr_crypt.c_pkg_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"s#s#i\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(s#)\00", align 1
@sha1_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"s#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @pkg_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pkg_crypt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @PyArg_ParseTuple(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %6, i32* %9, i32** %7, i32* %10, i32* %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %94

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = call i32* @malloc(i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %79, %25
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp sgt i32 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 16, i32* %19, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %38, i32 64)
  store i32* %39, i32** %15, align 8
  %40 = load i32, i32* @sha1_callback, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = call i32* @PyObject_CallObject(i32 %40, i32* %41)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @Py_DECREF(i32* %43)
  %45 = load i32*, i32** %16, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32* null, i32** %3, align 8
  br label %94

48:                                               ; preds = %37
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @PyArg_Parse(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32** %18, i32* %17)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32* null, i32** %3, align 8
  br label %94

53:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %63, %68
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @Py_DECREF(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @manipulate(i32* %82)
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %29

87:                                               ; preds = %29
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %88, i32 %89)
  store i32* %90, i32** %20, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @free(i32* %91)
  %93 = load i32*, i32** %20, align 8
  store i32* %93, i32** %3, align 8
  br label %94

94:                                               ; preds = %87, %52, %47, %24
  %95 = load i32*, i32** %3, align 8
  ret i32* %95
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**, i32*, i32**, i32*, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i32*, i32) #1

declare dso_local i32* @PyObject_CallObject(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyArg_Parse(i32*, i8*, i32**, i32*) #1

declare dso_local i32 @manipulate(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
