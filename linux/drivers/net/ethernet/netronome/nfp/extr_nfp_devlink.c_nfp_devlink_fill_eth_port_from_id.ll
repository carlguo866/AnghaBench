; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_fill_eth_port_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_fill_eth_port_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_eth_table_port = type { i32 }
%struct.nfp_port = type { i32 }

@NFP_PORT_PHYS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, i32, %struct.nfp_eth_table_port*)* @nfp_devlink_fill_eth_port_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_fill_eth_port_from_id(%struct.nfp_pf* %0, i32 %1, %struct.nfp_eth_table_port* %2) #0 {
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_eth_table_port*, align 8
  %7 = alloca %struct.nfp_port*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfp_eth_table_port* %2, %struct.nfp_eth_table_port** %6, align 8
  %8 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %9 = load i32, i32* @NFP_PORT_PHYS_PORT, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.nfp_port* @nfp_port_from_id(%struct.nfp_pf* %8, i32 %9, i32 %10)
  store %struct.nfp_port* %11, %struct.nfp_port** %7, align 8
  %12 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %13 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %14 = call i32 @nfp_devlink_fill_eth_port(%struct.nfp_port* %12, %struct.nfp_eth_table_port* %13)
  ret i32 %14
}

declare dso_local %struct.nfp_port* @nfp_port_from_id(%struct.nfp_pf*, i32, i32) #1

declare dso_local i32 @nfp_devlink_fill_eth_port(%struct.nfp_port*, %struct.nfp_eth_table_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
