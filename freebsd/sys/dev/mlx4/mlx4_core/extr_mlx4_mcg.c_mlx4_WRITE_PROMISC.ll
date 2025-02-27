; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_WRITE_PROMISC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_mlx4_WRITE_PROMISC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }

@MLX4_CMD_WRITE_MCG = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, %struct.mlx4_cmd_mailbox*)* @mlx4_WRITE_PROMISC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_WRITE_PROMISC(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.mlx4_cmd_mailbox* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 1
  %14 = or i32 %11, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %17 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MLX4_CMD_WRITE_MCG, align 4
  %21 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %22 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %23 = call i32 @mlx4_cmd(%struct.mlx4_dev* %15, i32 %18, i32 %19, i32 1, i32 %20, i32 %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
