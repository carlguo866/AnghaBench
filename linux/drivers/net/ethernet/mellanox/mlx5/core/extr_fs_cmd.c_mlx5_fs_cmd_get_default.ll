; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_fs_cmd_get_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_fs_cmd_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_cmds = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_default(i32 %0) #0 {
  %2 = alloca %struct.mlx5_flow_cmds*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %7 [
    i32 132, label %5
    i32 135, label %5
    i32 134, label %5
    i32 133, label %5
    i32 129, label %5
    i32 128, label %5
    i32 131, label %5
    i32 130, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %6 = call %struct.mlx5_flow_cmds* (...) @mlx5_fs_cmd_get_fw_cmds()
  store %struct.mlx5_flow_cmds* %6, %struct.mlx5_flow_cmds** %2, align 8
  br label %9

7:                                                ; preds = %1
  %8 = call %struct.mlx5_flow_cmds* (...) @mlx5_fs_cmd_get_stub_cmds()
  store %struct.mlx5_flow_cmds* %8, %struct.mlx5_flow_cmds** %2, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = load %struct.mlx5_flow_cmds*, %struct.mlx5_flow_cmds** %2, align 8
  ret %struct.mlx5_flow_cmds* %10
}

declare dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_fw_cmds(...) #1

declare dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_stub_cmds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
