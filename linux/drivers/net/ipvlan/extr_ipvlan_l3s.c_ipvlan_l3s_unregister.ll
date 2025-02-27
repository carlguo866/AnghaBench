; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_l3s_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_l3s_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_port = type { i32, %struct.net_device* }
%struct.net_device = type { i32*, i32 }

@IFF_L3MDEV_RX_HANDLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipvlan_l3s_unregister(%struct.ipvl_port* %0) #0 {
  %2 = alloca %struct.ipvl_port*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.ipvl_port* %0, %struct.ipvl_port** %2, align 8
  %4 = load %struct.ipvl_port*, %struct.ipvl_port** %2, align 8
  %5 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load i32, i32* @IFF_L3MDEV_RX_HANDLER, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.ipvl_port*, %struct.ipvl_port** %2, align 8
  %15 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %14, i32 0, i32 0
  %16 = call i32 @read_pnet(i32* %15)
  %17 = call i32 @ipvlan_unregister_nf_hook(i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ipvlan_unregister_nf_hook(i32) #1

declare dso_local i32 @read_pnet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
