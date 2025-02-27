; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_cmd.h___mlxsw_cmd_sw2hw_dq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_cmd.h___mlxsw_cmd_sw2hw_dq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }

@MLXSW_CMD_OPCODE_SW2HW_DQ = common dso_local global i32 0, align 4
@MLXSW_CMD_MBOX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, i8*, i32, i32)* @__mlxsw_cmd_sw2hw_dq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_cmd_sw2hw_dq(%struct.mlxsw_core* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %10 = load i32, i32* @MLXSW_CMD_OPCODE_SW2HW_DQ, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @MLXSW_CMD_MBOX_SIZE, align 4
  %15 = call i32 @mlxsw_cmd_exec_in(%struct.mlxsw_core* %9, i32 %10, i32 %11, i32 %12, i8* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @mlxsw_cmd_exec_in(%struct.mlxsw_core*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
