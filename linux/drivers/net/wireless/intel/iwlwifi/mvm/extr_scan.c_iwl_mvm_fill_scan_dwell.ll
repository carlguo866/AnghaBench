; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_dwell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_dwell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_scan_dwell = type { i32, i32, i32, i32 }

@IWL_SCAN_DWELL_ACTIVE = common dso_local global i32 0, align 4
@IWL_SCAN_DWELL_PASSIVE = common dso_local global i32 0, align 4
@IWL_SCAN_DWELL_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_SCAN_DWELL_EXTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_scan_dwell*)* @iwl_mvm_fill_scan_dwell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_fill_scan_dwell(%struct.iwl_mvm* %0, %struct.iwl_scan_dwell* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_scan_dwell*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_scan_dwell* %1, %struct.iwl_scan_dwell** %4, align 8
  %5 = load i32, i32* @IWL_SCAN_DWELL_ACTIVE, align 4
  %6 = load %struct.iwl_scan_dwell*, %struct.iwl_scan_dwell** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_scan_dwell, %struct.iwl_scan_dwell* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @IWL_SCAN_DWELL_PASSIVE, align 4
  %9 = load %struct.iwl_scan_dwell*, %struct.iwl_scan_dwell** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_scan_dwell, %struct.iwl_scan_dwell* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @IWL_SCAN_DWELL_FRAGMENTED, align 4
  %12 = load %struct.iwl_scan_dwell*, %struct.iwl_scan_dwell** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_scan_dwell, %struct.iwl_scan_dwell* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IWL_SCAN_DWELL_EXTENDED, align 4
  %15 = load %struct.iwl_scan_dwell*, %struct.iwl_scan_dwell** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_scan_dwell, %struct.iwl_scan_dwell* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
