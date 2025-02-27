; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_module.c_free_ieee80211_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_module.c_free_ieee80211_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_device = type { %struct.ieee80211_crypt_data**, i32, %struct.ieee80211_crypt_data* }
%struct.ieee80211_crypt_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@WEP_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_ieee80211(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ieee80211_device* @netdev_priv(%struct.net_device* %6)
  store %struct.ieee80211_device* %7, %struct.ieee80211_device** %3, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %9, align 8
  %11 = call i32 @kfree(%struct.ieee80211_crypt_data* %10)
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 2
  store %struct.ieee80211_crypt_data* null, %struct.ieee80211_crypt_data** %13, align 8
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %15 = call i32 @RemoveAllTS(%struct.ieee80211_device* %14)
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = call i32 @ieee80211_softmac_free(%struct.ieee80211_device* %16)
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  %20 = call i32 @del_timer_sync(i32* %19)
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %22 = call i32 @ieee80211_crypt_deinit_entries(%struct.ieee80211_device* %21, i32 1)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %62, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @WEP_KEYS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %30, i64 %32
  %34 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %33, align 8
  store %struct.ieee80211_crypt_data* %34, %struct.ieee80211_crypt_data** %5, align 8
  %35 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %36 = icmp ne %struct.ieee80211_crypt_data* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %27
  %38 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %47(i32 %50)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %5, align 8
  %54 = call i32 @kfree(%struct.ieee80211_crypt_data* %53)
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %57, i64 %59
  store %struct.ieee80211_crypt_data* null, %struct.ieee80211_crypt_data** %60, align 8
  br label %61

61:                                               ; preds = %52, %27
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %67 = call i32 @ieee80211_networks_free(%struct.ieee80211_device* %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call i32 @free_netdev(%struct.net_device* %68)
  ret void
}

declare dso_local %struct.ieee80211_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #1

declare dso_local i32 @RemoveAllTS(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_softmac_free(%struct.ieee80211_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ieee80211_crypt_deinit_entries(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @ieee80211_networks_free(%struct.ieee80211_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
