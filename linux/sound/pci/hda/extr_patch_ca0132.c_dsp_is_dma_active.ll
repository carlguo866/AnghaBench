; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_is_dma_active.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_is_dma_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@DSPDMAC_CHNLSTART_INST_OFFSET = common dso_local global i32 0, align 4
@DSPDMAC_CHNLSTART_EN_LOBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @dsp_is_dma_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_is_dma_active(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @DSPDMAC_CHNLSTART_INST_OFFSET, align 4
  %8 = call i32 @chipio_read(%struct.hda_codec* %6, i32 %7, i32* %5)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DSPDMAC_CHNLSTART_EN_LOBIT, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %10, %11
  %13 = shl i32 1, %12
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @chipio_read(%struct.hda_codec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
