; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evCmpTime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evCmpTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evCmpTime(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.timespec* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %15, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %23, %25
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %36

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i32 [ -1, %30 ], [ %35, %31 ]
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
