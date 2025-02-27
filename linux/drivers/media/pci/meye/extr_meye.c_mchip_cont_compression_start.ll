; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_mchip_cont_compression_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_mchip_cont_compression_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@meye = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MCHIP_HIC_MODE_CONT_COMP = common dso_local global i32 0, align 4
@MCHIP_HIC_MODE = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mchip_cont_compression_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mchip_cont_compression_start() #0 {
  %1 = call i32 (...) @mchip_hic_stop()
  %2 = call i32 @mchip_vrj_setup(i32 63)
  %3 = call i32 (...) @mchip_subsample()
  %4 = call i32 (...) @mchip_set_framerate()
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1), align 4
  %6 = call i32 @mchip_dma_setup(i32 %5)
  %7 = load i32, i32* @MCHIP_HIC_MODE_CONT_COMP, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 0), align 4
  %8 = load i32, i32* @MCHIP_HIC_MODE, align 4
  %9 = load i32, i32* @MCHIP_HIC_MODE_CONT_COMP, align 4
  %10 = call i32 @mchip_set(i32 %8, i32 %9)
  %11 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %12 = load i32, i32* @MCHIP_HIC_CMD_START, align 4
  %13 = call i32 @mchip_set(i32 %11, i32 %12)
  %14 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %15 = call i32 @mchip_delay(i32 %14, i32 0)
  ret void
}

declare dso_local i32 @mchip_hic_stop(...) #1

declare dso_local i32 @mchip_vrj_setup(i32) #1

declare dso_local i32 @mchip_subsample(...) #1

declare dso_local i32 @mchip_set_framerate(...) #1

declare dso_local i32 @mchip_dma_setup(i32) #1

declare dso_local i32 @mchip_set(i32, i32) #1

declare dso_local i32 @mchip_delay(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
