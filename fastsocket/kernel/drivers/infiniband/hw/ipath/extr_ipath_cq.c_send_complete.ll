; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_send_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_cq = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @send_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_complete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ipath_cq*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.ipath_cq*
  store %struct.ipath_cq* %6, %struct.ipath_cq** %3, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load %struct.ipath_cq*, %struct.ipath_cq** %3, align 8
  %9 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ipath_cq*, %struct.ipath_cq** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %13, align 8
  %15 = load %struct.ipath_cq*, %struct.ipath_cq** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %15, i32 0, i32 1
  %17 = load %struct.ipath_cq*, %struct.ipath_cq** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %14(%struct.TYPE_2__* %16, i32 %20)
  %22 = load %struct.ipath_cq*, %struct.ipath_cq** %3, align 8
  %23 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  ret void

28:                                               ; preds = %7
  br label %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
