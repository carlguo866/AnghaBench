; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_12kb_lkey_id_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_12kb_lkey_id_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)* @mlxsw_sp_acl_atcam_12kb_lkey_id_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_atcam_12kb_lkey_id_put(%struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_lkey_id* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %1, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %5 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %5, i32 0, i32 0
  %7 = call i64 @refcount_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %11 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %12 = call i32 @mlxsw_sp_acl_atcam_lkey_id_destroy(%struct.mlxsw_sp_acl_atcam_region* %10, %struct.mlxsw_sp_acl_atcam_lkey_id* %11)
  br label %13

13:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_atcam_lkey_id_destroy(%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
