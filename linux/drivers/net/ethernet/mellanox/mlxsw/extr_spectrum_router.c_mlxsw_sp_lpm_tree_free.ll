; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_lpm_tree = type { i32, i64 }

@MLXSW_REG_RALTA_LEN = common dso_local global i32 0, align 4
@ralta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*)* @mlxsw_sp_lpm_tree_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_lpm_tree_free(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_lpm_tree* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_lpm_tree* %1, %struct.mlxsw_sp_lpm_tree** %4, align 8
  %7 = load i32, i32* @MLXSW_REG_RALTA_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mlxsw_reg_ralta_pack(i8* %10, i32 0, i32 %14, i32 %17)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ralta, align 4
  %23 = call i32 @MLXSW_REG(i32 %22)
  %24 = call i32 @mlxsw_reg_write(i32 %21, i32 %23, i8* %10)
  %25 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %25)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ralta_pack(i8*, i32, i32, i32) #2

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
