; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getnetconfig.c_nc_sperror.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getnetconfig.c_nc_sperror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nc_error = common dso_local global i32 0, align 4
@_nc_errors = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unknown network selection error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nc_sperror() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @nc_error, align 4
  switch i32 %2, label %23 [
    i32 130, label %3
    i32 131, label %7
    i32 128, label %11
    i32 132, label %15
    i32 129, label %19
  ]

3:                                                ; preds = %0
  %4 = load i8**, i8*** @_nc_errors, align 8
  %5 = getelementptr inbounds i8*, i8** %4, i64 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %1, align 8
  br label %24

7:                                                ; preds = %0
  %8 = load i8**, i8*** @_nc_errors, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %1, align 8
  br label %24

11:                                               ; preds = %0
  %12 = load i8**, i8*** @_nc_errors, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 2
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %1, align 8
  br label %24

15:                                               ; preds = %0
  %16 = load i8**, i8*** @_nc_errors, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 3
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %1, align 8
  br label %24

19:                                               ; preds = %0
  %20 = load i8**, i8*** @_nc_errors, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 4
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %1, align 8
  br label %24

23:                                               ; preds = %0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7, %3
  %25 = load i8*, i8** %1, align 8
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
