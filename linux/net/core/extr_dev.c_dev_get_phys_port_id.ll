; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_phys_port_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_phys_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.netdev_phys_item_id*)* }
%struct.net_device.0 = type opaque
%struct.netdev_phys_item_id = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_get_phys_port_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_phys_item_id*, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  store %struct.net_device_ops* %9, %struct.net_device_ops** %6, align 8
  %10 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %11 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %10, i32 0, i32 0
  %12 = load i32 (%struct.net_device.0*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device.0*, %struct.netdev_phys_item_id*)** %11, align 8
  %13 = icmp ne i32 (%struct.net_device.0*, %struct.netdev_phys_item_id*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %19 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.net_device.0*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device.0*, %struct.netdev_phys_item_id*)** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = bitcast %struct.net_device* %21 to %struct.net_device.0*
  %23 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %5, align 8
  %24 = call i32 %20(%struct.net_device.0* %22, %struct.netdev_phys_item_id* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
