; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_qp_has_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_qp_has_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp_init_attr = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@MLX5_IB_QPT_REG_UMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp_init_attr*)* @qp_has_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_has_rq(%struct.ib_qp_init_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.ib_qp_init_attr* %0, %struct.ib_qp_init_attr** %3, align 8
  %4 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %5 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %9
  %16 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %17 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLX5_IB_QPT_REG_UMR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %28 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %20, %15, %9, %1
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
