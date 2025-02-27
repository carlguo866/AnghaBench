; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_wol_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_wol_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@MLX4_WOL_SETUP_MODE = common dso_local global i32 0, align 4
@MLX4_CMD_MOD_STAT_CFG = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_wol_write(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MLX4_WOL_SETUP_MODE, align 4
  %9 = load i32, i32* %6, align 4
  %10 = shl i32 %9, 8
  %11 = or i32 %8, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MLX4_CMD_MOD_STAT_CFG, align 4
  %16 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %17 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %18 = call i32 @mlx4_cmd(%struct.mlx4_dev* %12, i32 %13, i32 %14, i32 1, i32 %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
