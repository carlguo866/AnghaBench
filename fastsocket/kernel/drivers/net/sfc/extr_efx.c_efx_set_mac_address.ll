; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }
%struct.sockaddr = type { i8* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid ethernet MAC address requested: %pM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @efx_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.efx_nic* %10, %struct.efx_nic** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @is_valid_ether_addr(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %21 = load i32, i32* @drv, align 4
  %22 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @netif_err(%struct.efx_nic* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %32, i8* %33, i32 %36)
  %38 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %39 = call i32 @efx_sriov_mac_address_changed(%struct.efx_nic* %38)
  %40 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %46, align 8
  %48 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %49 = call i32 %47(%struct.efx_nic* %48)
  %50 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %29, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @efx_sriov_mac_address_changed(%struct.efx_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
