; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.b44 = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @b44_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.b44*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.b44* @netdev_priv(%struct.net_device* %9)
  store %struct.b44* %10, %struct.b44** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.b44*, %struct.b44** %7, align 8
  %19 = getelementptr inbounds %struct.b44, %struct.b44* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.b44*, %struct.b44** %7, align 8
  %22 = getelementptr inbounds %struct.b44, %struct.b44* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %17
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @phy_mii_ioctl(i32 %37, %struct.ifreq* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %48

41:                                               ; preds = %17
  %42 = load %struct.b44*, %struct.b44** %7, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 2
  %44 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %45 = call i32 @if_mii(%struct.ifreq* %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @generic_mii_ioctl(i32* %43, i32 %45, i32 %46, i32* null)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %41, %27
  %49 = load %struct.b44*, %struct.b44** %7, align 8
  %50 = getelementptr inbounds %struct.b44, %struct.b44* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_irq(i32* %50)
  br label %52

52:                                               ; preds = %48, %16
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @phy_mii_ioctl(i32, %struct.ifreq*, i32) #1

declare dso_local i32 @generic_mii_ioctl(i32*, i32, i32, i32*) #1

declare dso_local i32 @if_mii(%struct.ifreq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
