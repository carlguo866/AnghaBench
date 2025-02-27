; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.opa_vnic_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [16 x i8] c"open failed %d\0A\00", align 1
@OPA_VESWPORT_TRAP_ETH_LINK_STATUS_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @opa_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.opa_vnic_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device* %6)
  store %struct.opa_vnic_adapter* %7, %struct.opa_vnic_adapter** %4, align 8
  %8 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @v_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %4, align 8
  %25 = call i32 @opa_vnic_update_state(%struct.opa_vnic_adapter* %24, i32 1)
  %26 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %4, align 8
  %27 = load i32, i32* @OPA_VESWPORT_TRAP_ETH_LINK_STATUS_CHANGE, align 4
  %28 = call i32 @opa_vnic_vema_report_event(%struct.opa_vnic_adapter* %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device*) #1

declare dso_local i32 @v_dbg(i8*, i32) #1

declare dso_local i32 @opa_vnic_update_state(%struct.opa_vnic_adapter*, i32) #1

declare dso_local i32 @opa_vnic_vema_report_event(%struct.opa_vnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
