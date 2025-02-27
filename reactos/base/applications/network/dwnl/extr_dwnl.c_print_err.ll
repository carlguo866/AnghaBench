; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/dwnl/extr_dwnl.c_print_err.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/dwnl/extr_dwnl.c_print_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@DWNL_E_LASTERROR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@StdErr = common dso_local global i32 0, align 4
@IDS_ERROR_DOWNLOAD = common dso_local global i32 0, align 4
@IDS_ERROR_CODE = common dso_local global i32 0, align 4
@IDS_ERROR_FILENAME = common dso_local global i32 0, align 4
@IDS_ERROR_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @print_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_err(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @write_status(i8* bitcast ([1 x i32]* @.str to i8*))
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @DWNL_E_LASTERROR, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @StdErr, align 4
  %13 = load i32, i32* @IDS_ERROR_DOWNLOAD, align 4
  %14 = call i32 (i32, i32, ...) @ConResPrintf(i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %7
  %16 = load i32, i32* @StdErr, align 4
  %17 = load i32, i32* @IDS_ERROR_CODE, align 4
  %18 = call i64 (...) @GetLastError()
  %19 = call i32 (i32, i32, ...) @ConResPrintf(i32 %16, i32 %17, i64 %18)
  br label %20

20:                                               ; preds = %15, %11
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @StdErr, align 4
  %25 = load i32, i32* @IDS_ERROR_FILENAME, align 4
  %26 = call i32 (i32, i32, ...) @ConResPrintf(i32 %24, i32 %25)
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @StdErr, align 4
  %29 = load i32, i32* @IDS_ERROR_PROTOCOL, align 4
  %30 = call i32 (i32, i32, ...) @ConResPrintf(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %27, %23
  br label %32

32:                                               ; preds = %31, %20
  ret i32 1
}

declare dso_local i32 @write_status(i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ConResPrintf(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
