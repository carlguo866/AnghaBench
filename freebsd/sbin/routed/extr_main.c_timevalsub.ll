; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_timevalsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_timevalsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, %struct.timeval*, %struct.timeval*)* @timevalsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timevalsub(%struct.timeval* %0, %struct.timeval* %1, %struct.timeval* %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store %struct.timeval* %2, %struct.timeval** %6, align 8
  %7 = load %struct.timeval*, %struct.timeval** %5, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.timeval*, %struct.timeval** %6, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.timeval*, %struct.timeval** %4, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.timeval*, %struct.timeval** %5, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.timeval*, %struct.timeval** %6, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.timeval*, %struct.timeval** %4, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = icmp slt i64 %22, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.timeval*, %struct.timeval** %4, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.timeval*, %struct.timeval** %4, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1000000
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %26, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
