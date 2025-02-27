; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_HW2SW_MPT_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_HW2SW_MPT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mpt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RES_MPT_MAPPED = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_HW2SW_MPT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mpt*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %18 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %19 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %23 = call i32 @mpt_mask(%struct.mlx4_dev* %22)
  %24 = and i32 %21, %23
  store i32 %24, i32* %17, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @RES_MPT_MAPPED, align 4
  %29 = call i32 @mr_res_start_move_to(%struct.mlx4_dev* %25, i32 %26, i32 %27, i32 %28, %struct.res_mpt** %16)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %69

34:                                               ; preds = %6
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %39 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %40 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %41 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %35, i32 %36, %struct.mlx4_vhcr* %37, %struct.mlx4_cmd_mailbox* %38, %struct.mlx4_cmd_mailbox* %39, %struct.mlx4_cmd_info* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %62

45:                                               ; preds = %34
  %46 = load %struct.res_mpt*, %struct.res_mpt** %16, align 8
  %47 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.res_mpt*, %struct.res_mpt** %16, align 8
  %52 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @atomic_dec(i32* %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @RES_MPT, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @res_end_move(%struct.mlx4_dev* %57, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %7, align 4
  br label %69

62:                                               ; preds = %44
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RES_MPT, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @res_abort_move(%struct.mlx4_dev* %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %56, %32
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mr_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
