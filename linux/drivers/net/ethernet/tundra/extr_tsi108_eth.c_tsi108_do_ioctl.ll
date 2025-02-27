; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.tsi108_prv_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @tsi108_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsi108_prv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.tsi108_prv_data* %10, %struct.tsi108_prv_data** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %8, align 8
  %19 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %18, i32 0, i32 0
  %20 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %21 = call i32 @if_mii(%struct.ifreq* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @generic_mii_ioctl(i32* %19, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @generic_mii_ioctl(i32*, i32, i32, i32*) #1

declare dso_local i32 @if_mii(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
