; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_get_rx_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_get_rx_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32 }
%struct.mlx5e_wqe_frag_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_wqe_frag_info*)* @mlx5e_get_rx_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_rx_frag(%struct.mlx5e_rq* %0, %struct.mlx5e_wqe_frag_info* %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5e_wqe_frag_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store %struct.mlx5e_wqe_frag_info* %1, %struct.mlx5e_wqe_frag_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %12 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx5e_page_alloc(%struct.mlx5e_rq* %11, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @mlx5e_page_alloc(%struct.mlx5e_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
