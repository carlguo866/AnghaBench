; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_bind_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_bind_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }

@MLXSW_REG_PEMRBT_LEN = common dso_local global i32 0, align 4
@pemrbt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_acl_ruleset*)* @mlxsw_sp2_mr_tcam_bind_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_mr_tcam_bind_group(%struct.mlxsw_sp* %0, i32 %1, %struct.mlxsw_sp_acl_ruleset* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlxsw_sp_acl_ruleset* %2, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %10 = load i32, i32* @MLXSW_REG_PEMRBT_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %15 = call i32 @mlxsw_sp_acl_ruleset_group_id(%struct.mlxsw_sp_acl_ruleset* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @mlxsw_reg_pemrbt_pack(i8* %13, i32 %16, i32 %17)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @pemrbt, align 4
  %23 = call i32 @MLXSW_REG(i32 %22)
  %24 = call i32 @mlxsw_reg_write(i32 %21, i32 %23, i8* %13)
  %25 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %25)
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_group_id(%struct.mlxsw_sp_acl_ruleset*) #2

declare dso_local i32 @mlxsw_reg_pemrbt_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
