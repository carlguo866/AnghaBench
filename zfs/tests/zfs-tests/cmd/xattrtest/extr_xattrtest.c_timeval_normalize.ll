; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_timeval_normalize.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_timeval_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@USEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, i64, i64)* @timeval_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeval_normalize(%struct.timeval* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @USEC_PER_SEC, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* @USEC_PER_SEC, align 8
  %13 = load i64, i64* %6, align 8
  %14 = sub nsw i64 %13, %12
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %5, align 8
  br label %7

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %21, %17
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @USEC_PER_SEC, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %5, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.timeval*, %struct.timeval** %4, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.timeval*, %struct.timeval** %4, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
