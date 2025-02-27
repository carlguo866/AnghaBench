; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_get_slave_pkey_gid_tbl_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_get_slave_pkey_gid_tbl_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_slave_pkey_gid_tbl_len(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %14)
  store %struct.mlx4_cmd_mailbox* %15, %struct.mlx4_cmd_mailbox** %10, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %20)
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %29 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %30 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %31 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %23, i32 0, i32 %26, i32 %27, i32 0, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %51

35:                                               ; preds = %22
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @QUERY_PORT_CUR_MAX_GID_OFFSET, align 4
  %42 = call i32 @MLX4_GET(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @QUERY_PORT_CUR_MAX_PKEY_OFFSET, align 4
  %48 = call i32 @MLX4_GET(i32 %45, i32* %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %34
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %53 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %54 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %52, %struct.mlx4_cmd_mailbox* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
