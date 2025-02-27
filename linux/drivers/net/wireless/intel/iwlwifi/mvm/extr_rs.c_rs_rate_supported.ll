; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_rate_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i32 }
%struct.rs_rate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_lq_sta*, %struct.rs_rate*)* @rs_rate_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_rate_supported(%struct.iwl_lq_sta* %0, %struct.rs_rate* %1) #0 {
  %3 = alloca %struct.iwl_lq_sta*, align 8
  %4 = alloca %struct.rs_rate*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %3, align 8
  store %struct.rs_rate* %1, %struct.rs_rate** %4, align 8
  %5 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %6 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @BIT(i32 %7)
  %9 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %10 = load %struct.rs_rate*, %struct.rs_rate** %4, align 8
  %11 = call i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %9, %struct.rs_rate* %10)
  %12 = and i32 %8, %11
  ret i32 %12
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rs_get_supported_rates(%struct.iwl_lq_sta*, %struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
