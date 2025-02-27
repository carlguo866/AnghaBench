; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_do_sigprocmask.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_do_sigprocmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SIG_BLOCK_ = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@SIG_UNBLOCK_ = common dso_local global i64 0, align 8
@SIG_SETMASK_ = common dso_local global i64 0, align 8
@_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @do_sigprocmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sigprocmask(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @SIG_BLOCK_, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @sigmask_set(i32 %14)
  br label %39

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @SIG_UNBLOCK_, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @sigmask_set(i32 %26)
  br label %38

28:                                               ; preds = %16
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @SIG_SETMASK_, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sigmask_set(i32 %33)
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @_EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %20
  br label %39

39:                                               ; preds = %38, %9
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @sigmask_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
