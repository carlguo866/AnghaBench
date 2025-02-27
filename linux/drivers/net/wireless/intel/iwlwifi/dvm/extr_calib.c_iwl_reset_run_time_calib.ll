; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_reset_run_time_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_reset_run_time_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@NUM_RX_CHAINS = common dso_local global i32 0, align 4
@CHAIN_NOISE_DELTA_GAIN_INIT_VAL = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_reset_run_time_calib(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 1
  %6 = call i32 @memset(%struct.TYPE_2__* %5, i32 0, i32 4)
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 0
  %9 = call i32 @memset(%struct.TYPE_2__* %8, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NUM_RX_CHAINS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32, i32* @CHAIN_NOISE_DELTA_GAIN_INIT_VAL, align 4
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %15, i32* %22, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %28 = load i32, i32* @CMD_ASYNC, align 4
  %29 = call i32 @iwl_send_statistics_request(%struct.iwl_priv* %27, i32 %28, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @iwl_send_statistics_request(%struct.iwl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
