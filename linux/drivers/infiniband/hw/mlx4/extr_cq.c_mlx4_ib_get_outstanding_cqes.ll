; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_get_outstanding_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_get_outstanding_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_cq*)* @mlx4_ib_get_outstanding_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_get_outstanding_cqes(%struct.mlx4_ib_cq* %0) #0 {
  %2 = alloca %struct.mlx4_ib_cq*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_ib_cq* %0, %struct.mlx4_ib_cq** %2, align 8
  %4 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @get_sw_cqe(%struct.mlx4_ib_cq* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %8

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %2, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %17, %21
  ret i32 %22
}

declare dso_local i64 @get_sw_cqe(%struct.mlx4_ib_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
