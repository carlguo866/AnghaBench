; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst-dsp.c_cnl_ipc_op_int_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst-dsp.c_cnl_ipc_op_int_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@CNL_ADSP_REG_HIPCCTL = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCCTL_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cnl_ipc_op_int_disable(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %3 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %4 = load i32, i32* @CNL_ADSP_REG_HIPCCTL, align 4
  %5 = load i32, i32* @CNL_ADSP_REG_HIPCCTL_DONE, align 4
  %6 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %8 = load i32, i32* @CNL_ADSP_REG_HIPCCTL, align 4
  %9 = load i32, i32* @CNL_ADSP_REG_HIPCCTL_BUSY, align 4
  %10 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %7, i32 %8, i32 %9, i32 0)
  ret void
}

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
