; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_StopThreadList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_StopThreadList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StopThreadList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @LockList(i32* %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %23, %8
  %12 = load i64, i64* %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @LIST_NUM(i32* %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32* @LIST_DATA(i32* %17, i64 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @INFINITE, align 4
  %22 = call i32 @WaitThread(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @UnlockList(i32* %27)
  br label %29

29:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
