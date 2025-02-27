; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyObject_AsString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyObject_AsString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"could not create string representation of Python object\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"could not convert Python object into cstring: Python string representation appears to contain null bytes\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"could not convert Python object into cstring: Python string longer than reported length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PLyObject_AsString(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @PyUnicode_Check(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @PLyUnicode_Bytes(i32* %11)
  store i32* %12, i32** %3, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @PyFloat_Check(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @PyObject_Repr(i32* %18)
  store i32* %19, i32** %3, align 8
  br label %23

20:                                               ; preds = %13
  %21 = load i32*, i32** %2, align 8
  %22 = call i32* @PyObject_Str(i32* %21)
  store i32* %22, i32** %3, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @PLy_elog(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @PyBytes_AsString(i32* %31)
  %33 = call i8* @pstrdup(i32 %32)
  store i8* %33, i8** %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @PyBytes_Size(i32* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @Py_XDECREF(i32* %38)
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %57

49:                                               ; preds = %30
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ERROR, align 4
  %55 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @pg_verifymbstr(i8* %58, i64 %59, i32 0)
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PLyUnicode_Bytes(i32*) #1

declare dso_local i64 @PyFloat_Check(i32*) #1

declare dso_local i32* @PyObject_Repr(i32*) #1

declare dso_local i32* @PyObject_Str(i32*) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @PyBytes_AsString(i32*) #1

declare dso_local i64 @PyBytes_Size(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pg_verifymbstr(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
