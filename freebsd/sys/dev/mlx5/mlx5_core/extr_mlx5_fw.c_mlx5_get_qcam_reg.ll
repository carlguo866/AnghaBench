; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_get_qcam_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_get_qcam_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX5_QCAM_FEATURE_ENHANCED_FEATURES = common dso_local global i32 0, align 4
@MLX5_QCAM_REGS_FIRST_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_get_qcam_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_get_qcam_reg(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %3 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MLX5_QCAM_FEATURE_ENHANCED_FEATURES, align 4
  %9 = load i32, i32* @MLX5_QCAM_REGS_FIRST_128, align 4
  %10 = call i32 @mlx5_query_qcam_reg(%struct.mlx5_core_dev* %3, i32 %7, i32 %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @mlx5_query_qcam_reg(%struct.mlx5_core_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
