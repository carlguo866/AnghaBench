; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_get_linkcontrol_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_get_linkcontrol_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rtl_pci = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_pci_get_linkcontrol_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_pci_get_linkcontrol_field(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_pci_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %8)
  store %struct.rtl_pci_priv* %9, %struct.rtl_pci_priv** %3, align 8
  %10 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %3, align 8
  %11 = call %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv* %10)
  store %struct.rtl_pci* %11, %struct.rtl_pci** %4, align 8
  %12 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 16
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 2
  %24 = call i32 @pci_read_config_byte(i32 %21, i32 %23, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  ret void
}

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
