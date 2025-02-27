; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_change_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_change_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.vif_params = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@NL80211_IFTYPE_AP_VLAN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @ieee80211_change_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_change_iface(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %10, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ieee80211_if_change_type(%struct.ieee80211_sub_if_data* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %74

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %27 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @RCU_INIT_POINTER(i32 %35, i32* null)
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %38 = call i32 @ieee80211_check_fast_rx_iface(%struct.ieee80211_sub_if_data* %37)
  br label %57

39:                                               ; preds = %25, %21
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %45 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %50 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %43, %39
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %66 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %67 = call i32 @ieee80211_set_mon_options(%struct.ieee80211_sub_if_data* %65, %struct.vif_params* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %74

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %57
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %70, %19
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_if_change_type(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @ieee80211_check_fast_rx_iface(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_set_mon_options(%struct.ieee80211_sub_if_data*, %struct.vif_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
