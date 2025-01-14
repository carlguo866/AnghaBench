; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_stats_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_stats_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5e_rep_priv* }
%struct.TYPE_2__ = type { %struct.rtnl_link_stats64 }
%struct.rtnl_link_stats64 = type { i64, i64 }
%struct.mlx5e_rep_priv = type { %struct.rtnl_link_stats64 }
%struct.tc_cls_matchall_offload = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_tc_stats_matchall(%struct.mlx5e_priv* %0, %struct.tc_cls_matchall_offload* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.tc_cls_matchall_offload*, align 8
  %5 = alloca %struct.mlx5e_rep_priv*, align 8
  %6 = alloca %struct.rtnl_link_stats64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  %11 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %10, align 8
  store %struct.mlx5e_rep_priv* %11, %struct.mlx5e_rep_priv** %5, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast %struct.rtnl_link_stats64* %6 to i8*
  %16 = bitcast %struct.rtnl_link_stats64* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %18, %22
  store i64 %23, i64* %8, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %25, %29
  store i64 %30, i64* %7, align 8
  %31 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %31, i32 0, i32 0
  %33 = bitcast %struct.rtnl_link_stats64* %32 to i8*
  %34 = bitcast %struct.rtnl_link_stats64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %4, align 8
  %36 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @jiffies, align 4
  %40 = call i32 @flow_stats_update(i32* %36, i64 %37, i64 %38, i32 %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @flow_stats_update(i32*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
