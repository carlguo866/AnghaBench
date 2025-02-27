; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_one_ste_in_update_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_one_ste_in_update_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_send_info = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_domain = type { i32 }

@DR_STE_SIZE_REDUCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_ste_send_info*, %struct.mlx5dr_domain*)* @dr_rule_handle_one_ste_in_update_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_handle_one_ste_in_update_list(%struct.mlx5dr_ste_send_info* %0, %struct.mlx5dr_domain* %1) #0 {
  %3 = alloca %struct.mlx5dr_ste_send_info*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5dr_ste_send_info* %0, %struct.mlx5dr_ste_send_info** %3, align 8
  store %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain** %4, align 8
  %6 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %6, i32 0, i32 4
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %10 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlx5dr_send_postsend_ste(%struct.mlx5dr_domain* %9, %struct.TYPE_2__* %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_ste_send_info, %struct.mlx5dr_ste_send_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %36 = call i32 @memcpy(i32 %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %26, %25
  %38 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %3, align 8
  %39 = call i32 @kfree(%struct.mlx5dr_ste_send_info* %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlx5dr_send_postsend_ste(%struct.mlx5dr_domain*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5dr_ste_send_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
