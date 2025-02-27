; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_stop_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_stop_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_stop_hardware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %3, i32 0, i32 2
  %5 = call i32 @cancel_delayed_work_sync(i32* %4)
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = call i32 @mt76x02_mcu_set_radio_state(%struct.mt76x02_dev* %13, i32 0)
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = call i32 @mt76x2_mac_stop(%struct.mt76x02_dev* %15, i32 0)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mt76x02_mcu_set_radio_state(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_mac_stop(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
