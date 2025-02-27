; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audpp_cmd_cfg_adec_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audpp_cmd_cfg_adec_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }
%struct.audpp_cmd_cfg_adec_params_v13k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@AUDPP_CMD_CFG_ADEC_PARAMS = common dso_local global i32 0, align 4
@AUDPP_CMD_CFG_ADEC_PARAMS_V13K_LEN = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_MONO_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*)* @audpp_cmd_cfg_adec_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audpp_cmd_cfg_adec_params(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca %struct.audpp_cmd_cfg_adec_params_v13k, align 4
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = call i32 @memset(%struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 0, i32 20)
  %5 = load i32, i32* @AUDPP_CMD_CFG_ADEC_PARAMS, align 4
  %6 = getelementptr inbounds %struct.audpp_cmd_cfg_adec_params_v13k, %struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @AUDPP_CMD_CFG_ADEC_PARAMS_V13K_LEN, align 4
  %9 = getelementptr inbounds %struct.audpp_cmd_cfg_adec_params_v13k, %struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.audio*, %struct.audio** %2, align 8
  %12 = getelementptr inbounds %struct.audio, %struct.audio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.audpp_cmd_cfg_adec_params_v13k, %struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.audpp_cmd_cfg_adec_params_v13k, %struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 8000, i32* %17, align 4
  %18 = load i32, i32* @AUDPP_CMD_PCM_INTF_MONO_V, align 4
  %19 = getelementptr inbounds %struct.audpp_cmd_cfg_adec_params_v13k, %struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 @audpp_send_queue2(%struct.audpp_cmd_cfg_adec_params_v13k* %3, i32 20)
  ret void
}

declare dso_local i32 @memset(%struct.audpp_cmd_cfg_adec_params_v13k*, i32, i32) #1

declare dso_local i32 @audpp_send_queue2(%struct.audpp_cmd_cfg_adec_params_v13k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
