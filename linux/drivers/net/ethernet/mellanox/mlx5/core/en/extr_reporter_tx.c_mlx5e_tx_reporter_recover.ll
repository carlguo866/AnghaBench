; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_err_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, i8*)* @mlx5e_tx_reporter_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tx_reporter_recover(%struct.devlink_health_reporter* %0, i8* %1) #0 {
  %3 = alloca %struct.devlink_health_reporter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_err_ctx*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %8 = call %struct.mlx5e_priv* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mlx5e_err_ctx*
  store %struct.mlx5e_err_ctx* %10, %struct.mlx5e_err_ctx** %6, align 8
  %11 = load %struct.mlx5e_err_ctx*, %struct.mlx5e_err_ctx** %6, align 8
  %12 = icmp ne %struct.mlx5e_err_ctx* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mlx5e_err_ctx*, %struct.mlx5e_err_ctx** %6, align 8
  %15 = call i32 @mlx5e_tx_reporter_recover_from_ctx(%struct.mlx5e_err_ctx* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %18 = call i32 @mlx5e_health_recover_channels(%struct.mlx5e_priv* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  ret i32 %20
}

declare dso_local %struct.mlx5e_priv* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mlx5e_tx_reporter_recover_from_ctx(%struct.mlx5e_err_ctx*) #1

declare dso_local i32 @mlx5e_health_recover_channels(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
