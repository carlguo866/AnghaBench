; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.h_mlxsw_afk_element_usage_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.h_mlxsw_afk_element_usage_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_element_usage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_afk_element_usage*, i32*, i32)* @mlxsw_afk_element_usage_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_afk_element_usage_fill(%struct.mlxsw_afk_element_usage* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_afk_element_usage* %0, %struct.mlxsw_afk_element_usage** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %4, align 8
  %9 = call i32 @mlxsw_afk_element_usage_zero(%struct.mlxsw_afk_element_usage* %8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlxsw_afk_element_usage_add(%struct.mlxsw_afk_element_usage* %15, i32 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %10

25:                                               ; preds = %10
  ret void
}

declare dso_local i32 @mlxsw_afk_element_usage_zero(%struct.mlxsw_afk_element_usage*) #1

declare dso_local i32 @mlxsw_afk_element_usage_add(%struct.mlxsw_afk_element_usage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
