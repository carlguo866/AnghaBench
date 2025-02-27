; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_vif_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_vif_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { %struct.mlxsw_sp_mr_vif* }
%struct.mlxsw_sp_mr_vif = type { i64 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MAXVIFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_mr_vif_add(%struct.mlxsw_sp_mr_table* %0, %struct.net_device* %1, i64 %2, i64 %3, %struct.mlxsw_sp_rif* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlxsw_sp_rif*, align 8
  %12 = alloca %struct.mlxsw_sp_mr_vif*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.mlxsw_sp_rif* %4, %struct.mlxsw_sp_rif** %11, align 8
  %13 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %15, i64 %16
  store %struct.mlxsw_sp_mr_vif* %17, %struct.mlxsw_sp_mr_vif** %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @MAXVIFS, align 8
  %20 = icmp uge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %42

27:                                               ; preds = %5
  %28 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %12, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %12, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %41 = call i32 @mlxsw_sp_mr_vif_resolve(%struct.mlxsw_sp_mr_table* %36, %struct.net_device* %37, %struct.mlxsw_sp_mr_vif* %38, i64 %39, %struct.mlxsw_sp_rif* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %32, %24
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_mr_vif_resolve(%struct.mlxsw_sp_mr_table*, %struct.net_device*, %struct.mlxsw_sp_mr_vif*, i64, %struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
