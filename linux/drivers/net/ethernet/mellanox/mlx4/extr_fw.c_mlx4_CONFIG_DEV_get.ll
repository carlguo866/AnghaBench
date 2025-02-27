; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_CONFIG_DEV_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_CONFIG_DEV_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_config_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }

@MLX4_CMD_CONFIG_DEV = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_config_dev*)* @mlx4_CONFIG_DEV_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_CONFIG_DEV_get(%struct.mlx4_dev* %0, %struct.mlx4_config_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_config_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_cmd_mailbox*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_config_dev* %1, %struct.mlx4_config_dev** %5, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %9 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %8)
  store %struct.mlx4_cmd_mailbox* %9, %struct.mlx4_cmd_mailbox** %7, align 8
  %10 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %11 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %15 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %14)
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX4_CMD_CONFIG_DEV, align 4
  %22 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %23 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %24 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %17, i32 0, i32 %20, i32 0, i32 1, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = load %struct.mlx4_config_dev*, %struct.mlx4_config_dev** %5, align 8
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(%struct.mlx4_config_dev* %28, i32 %31, i32 4)
  br label %33

33:                                               ; preds = %27, %16
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %35 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %7, align 8
  %36 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %34, %struct.mlx4_cmd_mailbox* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_config_dev*, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
