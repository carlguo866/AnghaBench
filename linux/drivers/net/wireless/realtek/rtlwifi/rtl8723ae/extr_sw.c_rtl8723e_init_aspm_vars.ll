; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_sw.c_rtl8723e_init_aspm_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_sw.c_rtl8723e_init_aspm_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rtl_pci = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_init_aspm_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_init_aspm_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_pci* @rtl_pcidev(i32 %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %4, align 8
  %10 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %12, i32 0, i32 0
  store i32 3, i32* %13, align 8
  %14 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %14, i32 0, i32 1
  store i32 3, i32* %15, align 4
  %16 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %17 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %16, i32 0, i32 2
  store i32 2, i32* %17, align 8
  %18 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %28 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
