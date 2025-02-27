; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_ethtool.c_lbs_ethtool_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_ethtool.c_lbs_ethtool_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EHS_WAKE_ON_UNICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MULTICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_BROADCAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MAC_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @lbs_ethtool_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_ethtool_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  store %struct.lbs_private* %8, %struct.lbs_private** %5, align 8
  %9 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* @WAKE_UCAST, align 4
  %20 = load i32, i32* @WAKE_MCAST, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WAKE_BCAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WAKE_PHY, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EHS_WAKE_ON_UNICAST_DATA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load i32, i32* @WAKE_UCAST, align 4
  %36 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %18
  %41 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %42 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EHS_WAKE_ON_MULTICAST_DATA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @WAKE_MCAST, align 4
  %49 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EHS_WAKE_ON_BROADCAST_DATA, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @WAKE_BCAST, align 4
  %62 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EHS_WAKE_ON_MAC_EVENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @WAKE_PHY, align 4
  %75 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %13, %73, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
