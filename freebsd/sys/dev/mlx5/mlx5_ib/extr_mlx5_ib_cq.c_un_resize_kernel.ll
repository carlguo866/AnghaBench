; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_un_resize_kernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_un_resize_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_cq = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*)* @un_resize_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @un_resize_kernel(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_cq* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_cq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_cq* %1, %struct.mlx5_ib_cq** %4, align 8
  %5 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %6 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @free_cq_buf(%struct.mlx5_ib_dev* %5, i32* %8)
  %10 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  ret void
}

declare dso_local i32 @free_cq_buf(%struct.mlx5_ib_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
