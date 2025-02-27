; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_acl_tcam.c_mlxsw_sp2_acl_tcam_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_acl_tcam.c_mlxsw_sp2_acl_tcam_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.mlxsw_sp2_acl_tcam_region = type { i32 }
%struct.mlxsw_sp2_acl_tcam_chunk = type { i32 }
%struct.mlxsw_sp2_acl_tcam_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i8*, i8*, %struct.mlxsw_sp_acl_rule_info*)* @mlxsw_sp2_acl_tcam_entry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_acl_tcam_entry_add(%struct.mlxsw_sp* %0, i8* %1, i8* %2, i8* %3, %struct.mlxsw_sp_acl_rule_info* %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %11 = alloca %struct.mlxsw_sp2_acl_tcam_region*, align 8
  %12 = alloca %struct.mlxsw_sp2_acl_tcam_chunk*, align 8
  %13 = alloca %struct.mlxsw_sp2_acl_tcam_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.mlxsw_sp_acl_rule_info* %4, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.mlxsw_sp2_acl_tcam_region*
  store %struct.mlxsw_sp2_acl_tcam_region* %15, %struct.mlxsw_sp2_acl_tcam_region** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.mlxsw_sp2_acl_tcam_chunk*
  store %struct.mlxsw_sp2_acl_tcam_chunk* %17, %struct.mlxsw_sp2_acl_tcam_chunk** %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.mlxsw_sp2_acl_tcam_entry*
  store %struct.mlxsw_sp2_acl_tcam_entry* %19, %struct.mlxsw_sp2_acl_tcam_entry** %13, align 8
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp2_acl_tcam_entry*, %struct.mlxsw_sp2_acl_tcam_entry** %13, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_entry, %struct.mlxsw_sp2_acl_tcam_entry* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %26 = load %struct.mlxsw_sp2_acl_tcam_region*, %struct.mlxsw_sp2_acl_tcam_region** %11, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_region, %struct.mlxsw_sp2_acl_tcam_region* %26, i32 0, i32 0
  %28 = load %struct.mlxsw_sp2_acl_tcam_chunk*, %struct.mlxsw_sp2_acl_tcam_chunk** %12, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_chunk, %struct.mlxsw_sp2_acl_tcam_chunk* %28, i32 0, i32 0
  %30 = load %struct.mlxsw_sp2_acl_tcam_entry*, %struct.mlxsw_sp2_acl_tcam_entry** %13, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_entry, %struct.mlxsw_sp2_acl_tcam_entry* %30, i32 0, i32 0
  %32 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %33 = call i32 @mlxsw_sp_acl_atcam_entry_add(%struct.mlxsw_sp* %25, i32* %27, i32* %29, i32* %31, %struct.mlxsw_sp_acl_rule_info* %32)
  ret i32 %33
}

declare dso_local i32 @mlxsw_sp_acl_atcam_entry_add(%struct.mlxsw_sp*, i32*, i32*, i32*, %struct.mlxsw_sp_acl_rule_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
