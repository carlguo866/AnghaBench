; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_debugfs.c_iwl_cmd_echo_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_debugfs.c_iwl_cmd_echo_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_host_cmd = type { i32, i32, i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@REPLY_ECHO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"echo testing fail: 0X%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"echo testing pass\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_cmd_echo_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_cmd_echo_test(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %4, i32 0, i32 0
  %6 = load i32, i32* @CMD_SYNC, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %4, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %4, i32 0, i32 2
  %9 = load i32, i32* @REPLY_ECHO, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %10, %struct.iwl_host_cmd* %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @IWL_ERR(%struct.iwl_priv* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %20 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
