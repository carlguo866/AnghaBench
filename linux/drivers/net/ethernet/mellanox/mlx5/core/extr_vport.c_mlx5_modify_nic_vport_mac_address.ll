; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_modify_nic_vport_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_modify_nic_vport_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@nic_vport_context = common dso_local global i32 0, align 4
@permanent_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_nic_vport_mac_address(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @modify_nic_vport_context_in, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kvzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* @modify_nic_vport_context_in, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %27 = call i32 @MLX5_SET(i32 %24, i8* %25, i32 %26, i32 1)
  %28 = load i32, i32* @modify_nic_vport_context_in, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @vport_number, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @MLX5_SET(i32 %28, i8* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @modify_nic_vport_context_in, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @other_vport, align 4
  %36 = call i32 @MLX5_SET(i32 %33, i8* %34, i32 %35, i32 1)
  %37 = load i32, i32* @modify_nic_vport_context_in, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @nic_vport_context, align 4
  %40 = call i8* @MLX5_ADDR_OF(i32 %37, i8* %38, i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i32, i32* @nic_vport_context, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* @permanent_address, align 4
  %44 = call i8* @MLX5_ADDR_OF(i32 %41, i8* %42, i32 %43)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @ether_addr_copy(i32* %47, i32* %48)
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %50, i8* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @kvfree(i8* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %23, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
