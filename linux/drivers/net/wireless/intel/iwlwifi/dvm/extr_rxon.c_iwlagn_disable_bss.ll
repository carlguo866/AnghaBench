; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_disable_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_disable_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32 }
%struct.iwl_rxon_cmd = type { i32 }

@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error clearing ASSOC_MSK on BSS (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_rxon_cmd*)* @iwlagn_disable_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_disable_bss(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.iwl_rxon_cmd* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_rxon_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  store %struct.iwl_rxon_cmd* %2, %struct.iwl_rxon_cmd** %6, align 8
  %9 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %10 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %23 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %18, i32 %21, i32 0, i32 4, %struct.iwl_rxon_cmd* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @IWL_DEBUG_QUIET_RFKILL(%struct.iwl_priv* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_rxon_cmd*) #1

declare dso_local i32 @IWL_DEBUG_QUIET_RFKILL(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
