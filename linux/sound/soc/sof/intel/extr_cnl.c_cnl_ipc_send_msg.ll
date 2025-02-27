; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_cnl.c_cnl_ipc_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_cnl.c_cnl_ipc_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_sof_ipc_msg = type { i32, i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDR = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.snd_sof_ipc_msg*)* @cnl_ipc_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_ipc_send_msg(%struct.snd_sof_dev* %0, %struct.snd_sof_ipc_msg* %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.snd_sof_ipc_msg*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store %struct.snd_sof_ipc_msg* %1, %struct.snd_sof_ipc_msg** %4, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %4, align 8
  %11 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %4, align 8
  %14 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sof_mailbox_write(%struct.snd_sof_dev* %5, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %18 = load i32, i32* @HDA_DSP_BAR, align 4
  %19 = load i32, i32* @CNL_DSP_REG_HIPCIDR, align 4
  %20 = load i32, i32* @CNL_DSP_REG_HIPCIDR_BUSY, align 4
  %21 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %17, i32 %18, i32 %19, i32 %20)
  ret i32 0
}

declare dso_local i32 @sof_mailbox_write(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
