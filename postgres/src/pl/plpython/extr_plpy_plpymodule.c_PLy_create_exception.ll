; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_create_exception.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_create_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i32*)* @PLy_create_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLy_create_exception(i8* %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32* @PyErr_NewException(i8* %12, i32* %13, i32* %14)
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 @PLy_elog(i32 %19, i32* null)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @Py_INCREF(i32* %22)
  %24 = load i32*, i32** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @PyModule_AddObject(i32* %24, i8* %25, i32* %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @Py_INCREF(i32* %28)
  %30 = load i32*, i32** %11, align 8
  ret i32* %30
}

declare dso_local i32* @PyErr_NewException(i8*, i32*, i32*) #1

declare dso_local i32 @PLy_elog(i32, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyModule_AddObject(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
