; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_smem_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_mon_smem_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_ini_region_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*)* @iwl_dump_ini_mon_smem_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_mon_smem_get_size(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_region_cfg* %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fw_ini_region_cfg* %1, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %5 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %6 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %7 = call i32 @iwl_dump_ini_mem_ranges(%struct.iwl_fw_runtime* %5, %struct.iwl_fw_ini_region_cfg* %6)
  %8 = sext i32 %7 to i64
  %9 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = mul i64 %8, %15
  %17 = add i64 4, %16
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare dso_local i32 @iwl_dump_ini_mem_ranges(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_region_cfg*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
