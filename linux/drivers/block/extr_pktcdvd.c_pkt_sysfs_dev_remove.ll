; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_sysfs_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_sysfs_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32, i32, i32 }

@class_pktcdvd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_sysfs_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_sysfs_dev_remove(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %3 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %4 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pkt_kobj_remove(i32 %5)
  %7 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %8 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pkt_kobj_remove(i32 %9)
  %11 = load i64, i64* @class_pktcdvd, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %15 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_unregister(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @pkt_kobj_remove(i32) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
