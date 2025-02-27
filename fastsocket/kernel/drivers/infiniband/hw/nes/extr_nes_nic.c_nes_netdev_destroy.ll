; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nes_vnic = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_netdev_destroy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nes_vnic*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %4)
  store %struct.nes_vnic* %5, %struct.nes_vnic** %3, align 8
  %6 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %7 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %6, i32 0, i32 2
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %10 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %15 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @nes_destroy_ofa_device(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @free_netdev(%struct.net_device* %19)
  ret void
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nes_destroy_ofa_device(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
