; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_map_target_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_map_target_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@SOC_CORE_BASE_ADDRESS = common dso_local global i64 0, align 8
@FW_RAM_CONFIG_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i64)* @ath10k_hw_map_target_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_hw_map_target_mem(%struct.ath10k* %0, i64 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %7 = load i64, i64* @FW_RAM_CONFIG_ADDRESS, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ath10k_hif_write32(%struct.ath10k* %9, i64 %10, i64 %11)
  ret void
}

declare dso_local i32 @ath10k_hif_write32(%struct.ath10k*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
