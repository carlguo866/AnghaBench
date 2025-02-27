; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qlge_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlge_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ql_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ql_adapter* %8, %struct.ql_adapter** %4, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %13 = call i32 @ql_cancel_all_work_sync(%struct.ql_adapter* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @unregister_netdev(%struct.net_device* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i32 @ql_release_all(%struct.pci_dev* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_disable_device(%struct.pci_dev* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @free_netdev(%struct.net_device* %20)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ql_cancel_all_work_sync(%struct.ql_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ql_release_all(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
