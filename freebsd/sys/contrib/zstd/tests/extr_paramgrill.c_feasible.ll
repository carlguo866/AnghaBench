; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_feasible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_feasible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@g_optmode = common dso_local global i32 0, align 4
@g_lvltarget = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @feasible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feasible(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %4, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %10, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, i32* @g_optmode, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_lvltarget, i32 0, i32 0), align 8
  %27 = icmp sle i64 %25, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ true, %20 ], [ %27, %23 ]
  br label %30

30:                                               ; preds = %28, %14, %8, %2
  %31 = phi i1 [ false, %14 ], [ false, %8 ], [ false, %2 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
