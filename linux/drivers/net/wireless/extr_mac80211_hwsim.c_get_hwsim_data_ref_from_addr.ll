; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_get_hwsim_data_ref_from_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_get_hwsim_data_ref_from_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { i32 }

@hwsim_radios_rht = common dso_local global i32 0, align 4
@hwsim_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mac80211_hwsim_data* (i32*)* @get_hwsim_data_ref_from_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mac80211_hwsim_data* @get_hwsim_data_ref_from_addr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @hwsim_rht_params, align 4
  %5 = call %struct.mac80211_hwsim_data* @rhashtable_lookup_fast(i32* @hwsim_radios_rht, i32* %3, i32 %4)
  ret %struct.mac80211_hwsim_data* %5
}

declare dso_local %struct.mac80211_hwsim_data* @rhashtable_lookup_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
