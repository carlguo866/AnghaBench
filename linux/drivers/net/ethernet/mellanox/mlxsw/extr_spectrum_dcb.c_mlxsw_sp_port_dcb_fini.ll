; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_port_dcb_fini(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %2, align 8
  %3 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %4 = call i32 @mlxsw_sp_port_pfc_fini(%struct.mlxsw_sp_port* %3)
  %5 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %6 = call i32 @mlxsw_sp_port_maxrate_fini(%struct.mlxsw_sp_port* %5)
  %7 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %8 = call i32 @mlxsw_sp_port_ets_fini(%struct.mlxsw_sp_port* %7)
  ret void
}

declare dso_local i32 @mlxsw_sp_port_pfc_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_maxrate_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_ets_fini(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
