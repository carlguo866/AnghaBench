; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.h_wmi_data_hdr_get_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.h_wmi_data_hdr_get_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_data_hdr = type { i32 }

@WMI_DATA_HDR_UP_SHIFT = common dso_local global i32 0, align 4
@WMI_DATA_HDR_UP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_data_hdr*)* @wmi_data_hdr_get_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmi_data_hdr_get_up(%struct.wmi_data_hdr* %0) #0 {
  %2 = alloca %struct.wmi_data_hdr*, align 8
  store %struct.wmi_data_hdr* %0, %struct.wmi_data_hdr** %2, align 8
  %3 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WMI_DATA_HDR_UP_SHIFT, align 4
  %7 = ashr i32 %5, %6
  %8 = load i32, i32* @WMI_DATA_HDR_UP_MASK, align 4
  %9 = and i32 %7, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
