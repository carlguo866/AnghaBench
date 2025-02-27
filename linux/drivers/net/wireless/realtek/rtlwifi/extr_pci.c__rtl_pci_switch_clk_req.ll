; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_switch_clk_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_switch_clk_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8192SE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl_pci_switch_clk_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_switch_clk_req(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_pci* @rtl_pcidev(i32 %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call i32 @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(i32 %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  %13 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pci_write_config_byte(i32 %15, i32 129, i32 %16)
  %18 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %19 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @udelay(i32 100)
  br label %25

25:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
