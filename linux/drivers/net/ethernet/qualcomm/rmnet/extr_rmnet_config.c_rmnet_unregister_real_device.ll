; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_unregister_real_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_unregister_real_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rmnet_port = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Removed from rmnet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rmnet_port*)* @rmnet_unregister_real_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmnet_unregister_real_device(%struct.net_device* %0, %struct.rmnet_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rmnet_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %5, align 8
  %6 = load %struct.rmnet_port*, %struct.rmnet_port** %5, align 8
  %7 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %14)
  %16 = load %struct.rmnet_port*, %struct.rmnet_port** %5, align 8
  %17 = call i32 @kfree(%struct.rmnet_port* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @dev_put(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netdev_dbg(%struct.net_device* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.rmnet_port*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
