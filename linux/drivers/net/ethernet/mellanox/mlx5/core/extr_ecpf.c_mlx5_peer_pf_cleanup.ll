; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_ecpf.c_mlx5_peer_pf_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_ecpf.c_mlx5_peer_pf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to disable peer PF HCA err(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Timeout reclaiming peer PF pages err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @mlx5_peer_pf_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_peer_pf_cleanup(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = call i32 @mlx5_peer_pf_disable_hca(%struct.mlx5_core_dev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mlx5_wait_for_pages(%struct.mlx5_core_dev* %13, i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %8, %20, %12
  ret void
}

declare dso_local i32 @mlx5_peer_pf_disable_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_wait_for_pages(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
