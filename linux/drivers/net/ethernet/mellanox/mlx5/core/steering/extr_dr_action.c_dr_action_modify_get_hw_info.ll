; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_modify_get_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_modify_get_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dr_action_modify_field_conv = type { i32, i32 }

@dr_action_conv_arr = common dso_local global %struct.dr_action_modify_field_conv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dr_action_modify_field_conv* (i64)* @dr_action_modify_get_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dr_action_modify_field_conv* @dr_action_modify_get_hw_info(i64 %0) #0 {
  %2 = alloca %struct.dr_action_modify_field_conv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dr_action_modify_field_conv*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** @dr_action_conv_arr, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.dr_action_modify_field_conv* %6)
  %8 = icmp uge i64 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** @dr_action_conv_arr, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %11, i64 %12
  store %struct.dr_action_modify_field_conv* %13, %struct.dr_action_modify_field_conv** %4, align 8
  %14 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %4, align 8
  %15 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %4, align 8
  %20 = getelementptr inbounds %struct.dr_action_modify_field_conv, %struct.dr_action_modify_field_conv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %26

24:                                               ; preds = %18, %10
  %25 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %4, align 8
  store %struct.dr_action_modify_field_conv* %25, %struct.dr_action_modify_field_conv** %2, align 8
  br label %27

26:                                               ; preds = %23, %9
  store %struct.dr_action_modify_field_conv* null, %struct.dr_action_modify_field_conv** %2, align 8
  br label %27

27:                                               ; preds = %26, %24
  %28 = load %struct.dr_action_modify_field_conv*, %struct.dr_action_modify_field_conv** %2, align 8
  ret %struct.dr_action_modify_field_conv* %28
}

declare dso_local i64 @ARRAY_SIZE(%struct.dr_action_modify_field_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
