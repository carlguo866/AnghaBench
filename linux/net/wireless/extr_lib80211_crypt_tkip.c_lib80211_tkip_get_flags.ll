; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_lib80211_crypt_tkip.c_lib80211_tkip_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_lib80211_crypt_tkip.c_lib80211_tkip_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lib80211_tkip_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @lib80211_tkip_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lib80211_tkip_get_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lib80211_tkip_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.lib80211_tkip_data*
  store %struct.lib80211_tkip_data* %5, %struct.lib80211_tkip_data** %3, align 8
  %6 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %3, align 8
  %7 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
