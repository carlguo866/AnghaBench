; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w5300_priv = type { i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"shutting down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @w5300_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5300_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w5300_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.w5300_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.w5300_priv* %5, %struct.w5300_priv** %3, align 8
  %6 = load %struct.w5300_priv*, %struct.w5300_priv** %3, align 8
  %7 = load i32, i32* @ifdown, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_info(%struct.w5300_priv* %6, i32 %7, %struct.net_device* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.w5300_priv*, %struct.w5300_priv** %3, align 8
  %11 = call i32 @w5300_hw_close(%struct.w5300_priv* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_carrier_off(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_stop_queue(%struct.net_device* %14)
  %16 = load %struct.w5300_priv*, %struct.w5300_priv** %3, align 8
  %17 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %16, i32 0, i32 0
  %18 = call i32 @napi_disable(i32* %17)
  ret i32 0
}

declare dso_local %struct.w5300_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.w5300_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @w5300_hw_close(%struct.w5300_priv*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
