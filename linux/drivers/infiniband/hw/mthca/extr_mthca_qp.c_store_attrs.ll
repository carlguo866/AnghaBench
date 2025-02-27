; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_store_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_store_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_sqp = type { i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32 }

@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_sqp*, %struct.ib_qp_attr*, i32)* @store_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_attrs(%struct.mthca_sqp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_sqp*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.mthca_sqp* %0, %struct.mthca_sqp** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mthca_sqp*, %struct.mthca_sqp** %4, align 8
  %16 = getelementptr inbounds %struct.mthca_sqp, %struct.mthca_sqp* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IB_QP_QKEY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %24 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mthca_sqp*, %struct.mthca_sqp** %4, align 8
  %27 = getelementptr inbounds %struct.mthca_sqp, %struct.mthca_sqp* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %35 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mthca_sqp*, %struct.mthca_sqp** %4, align 8
  %38 = getelementptr inbounds %struct.mthca_sqp, %struct.mthca_sqp* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
