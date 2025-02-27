; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp.c_LWP_SetThreadPriority.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp.c_LWP_SetThreadPriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LWP_THREAD_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LWP_SetThreadPriority(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @LWP_THREAD_NULL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i64 (...) @LWP_GetSelf()
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32* @__lwp_cntrl_open(i64 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %24

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__lwp_priotocore(i32 %19)
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @__lwp_thread_changepriority(i32* %18, i32 %20, i32 %21)
  %23 = call i32 (...) @__lwp_thread_dispatchenable()
  br label %24

24:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @LWP_GetSelf(...) #1

declare dso_local i32* @__lwp_cntrl_open(i64) #1

declare dso_local i32 @__lwp_thread_changepriority(i32*, i32, i32) #1

declare dso_local i32 @__lwp_priotocore(i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
