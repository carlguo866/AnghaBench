; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_is_qp_type_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_is_qp_type_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64 }

@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*)* @is_qp_type_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_qp_type_connected(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %3 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %4 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IB_QPT_UC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IB_QPT_RC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %14, %8, %1
  %27 = phi i1 [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
