; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_rule_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_rule_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32, i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

@MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_mr_route_key*, i32)* @mlxsw_sp2_mr_tcam_rule_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_mr_tcam_rule_parse(%struct.mlxsw_sp_acl_rule* %0, %struct.mlxsw_sp_mr_route_key* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %5 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  store %struct.mlxsw_sp_acl_rule* %0, %struct.mlxsw_sp_acl_rule** %4, align 8
  store %struct.mlxsw_sp_mr_route_key* %1, %struct.mlxsw_sp_mr_route_key** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %9 = call %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_rule* %8)
  store %struct.mlxsw_sp_acl_rule_info* %9, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %14 = load i32, i32* @MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7, align 4
  %15 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GENMASK(i32 7, i32 0)
  %19 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %13, i32 %14, i32 %17, i32 %18)
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %21 = load i32, i32* @MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10, align 4
  %22 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = call i32 @GENMASK(i32 2, i32 0)
  %27 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %20, i32 %21, i32 %25, i32 %26)
  %28 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %37 [
    i32 129, label %31
    i32 128, label %34
  ]

31:                                               ; preds = %3
  %32 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %33 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  call void @mlxsw_sp2_mr_tcam_rule_parse4(%struct.mlxsw_sp_acl_rule_info* %32, %struct.mlxsw_sp_mr_route_key* %33)
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %36 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  call void @mlxsw_sp2_mr_tcam_rule_parse6(%struct.mlxsw_sp_acl_rule_info* %35, %struct.mlxsw_sp_mr_route_key* %36)
  br label %37

37:                                               ; preds = %31, %34, %3
  ret void
}

declare dso_local %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info*, i32, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local void @mlxsw_sp2_mr_tcam_rule_parse4(%struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_mr_route_key*) #1

declare dso_local void @mlxsw_sp2_mr_tcam_rule_parse6(%struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_mr_route_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
