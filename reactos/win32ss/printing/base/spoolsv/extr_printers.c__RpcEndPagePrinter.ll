; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printers.c__RpcEndPagePrinter.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printers.c__RpcEndPagePrinter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RpcImpersonateClient failed with error %lu!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_RpcEndPagePrinter(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i64 @RpcImpersonateClient(i32* null)
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @EndPagePrinter(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i64 (...) @GetLastError()
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = call i32 (...) @RpcRevertToSelf()
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %19, %9
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local i64 @RpcImpersonateClient(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @EndPagePrinter(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @RpcRevertToSelf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
