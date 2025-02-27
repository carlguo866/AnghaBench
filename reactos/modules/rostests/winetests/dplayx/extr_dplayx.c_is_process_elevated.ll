; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_is_process_elevated.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_is_process_elevated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_QUERY = common dso_local global i32 0, align 4
@TokenElevationType = common dso_local global i32 0, align 4
@TokenElevationTypeFull = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_process_elevated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_process_elevated() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @GetCurrentProcess()
  %7 = load i32, i32* @TOKEN_QUERY, align 4
  %8 = call i64 @OpenProcessToken(i32 %6, i32 %7, i32* %2)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TokenElevationType, align 4
  %13 = call i32 @GetTokenInformation(i32 %11, i32 %12, i64* %3, i32 8, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @CloseHandle(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @TokenElevationTypeFull, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %18, %10
  %23 = phi i1 [ false, %10 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %27

25:                                               ; preds = %0
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetTokenInformation(i32, i32, i64*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
