; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_agn.h_iwl_set_calib_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_agn.h_iwl_set_calib_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_calib_hdr = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_calib_hdr*, i32)* @iwl_set_calib_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_set_calib_hdr(%struct.iwl_calib_hdr* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_calib_hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_calib_hdr* %0, %struct.iwl_calib_hdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_calib_hdr, %struct.iwl_calib_hdr* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_calib_hdr, %struct.iwl_calib_hdr* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_calib_hdr, %struct.iwl_calib_hdr* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.iwl_calib_hdr*, %struct.iwl_calib_hdr** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_calib_hdr, %struct.iwl_calib_hdr* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
