; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_up_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_up_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.net_device*)* @mlxsw_sp_netdevice_ipip_ol_up_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_netdevice_ipip_ol_up_event(%struct.mlxsw_sp* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp* %6, %struct.net_device* %7)
  store %struct.mlxsw_sp_ipip_entry* %8, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %9 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %10 = icmp ne %struct.mlxsw_sp_ipip_entry* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %13 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %14 = call i32 @mlxsw_sp_ipip_entry_ol_up_event(%struct.mlxsw_sp* %12, %struct.mlxsw_sp_ipip_entry* %13)
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_ol_up_event(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
