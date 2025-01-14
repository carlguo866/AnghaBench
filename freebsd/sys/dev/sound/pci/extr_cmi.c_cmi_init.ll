; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@CMPCI_REG_MISC = common dso_local global i32 0, align 4
@CMPCI_REG_BUS_AND_DSP_RESET = common dso_local global i32 0, align 4
@CMPCI_REG_FUNC_0 = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_INTR_CTRL = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_DIR = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_DIR = common dso_local global i32 0, align 4
@CMPCI_REG_N4SPK3D = common dso_local global i32 0, align 4
@CMPCI_REG_FUNC_1 = common dso_local global i32 0, align 4
@CMPCI_REG_SPDIF1_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_SPDIF_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @cmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi_init(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %4 = load i32, i32* @CMPCI_REG_MISC, align 4
  %5 = load i32, i32* @CMPCI_REG_BUS_AND_DSP_RESET, align 4
  %6 = call i32 @cmi_set4(%struct.sc_info* %3, i32 %4, i32 %5)
  %7 = call i32 @DELAY(i32 100)
  %8 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %9 = load i32, i32* @CMPCI_REG_MISC, align 4
  %10 = load i32, i32* @CMPCI_REG_BUS_AND_DSP_RESET, align 4
  %11 = call i32 @cmi_clr4(%struct.sc_info* %8, i32 %9, i32 %10)
  %12 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %13 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %14 = load i32, i32* @CMPCI_REG_CH0_ENABLE, align 4
  %15 = load i32, i32* @CMPCI_REG_CH1_ENABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @cmi_clr4(%struct.sc_info* %12, i32 %13, i32 %16)
  %18 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %19 = load i32, i32* @CMPCI_REG_INTR_CTRL, align 4
  %20 = load i32, i32* @CMPCI_REG_CH0_INTR_ENABLE, align 4
  %21 = load i32, i32* @CMPCI_REG_CH1_INTR_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cmi_clr4(%struct.sc_info* %18, i32 %19, i32 %22)
  %24 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %25 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %26 = load i32, i32* @CMPCI_REG_CH0_DIR, align 4
  %27 = call i32 @cmi_clr4(%struct.sc_info* %24, i32 %25, i32 %26)
  %28 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %29 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %30 = load i32, i32* @CMPCI_REG_CH1_DIR, align 4
  %31 = call i32 @cmi_set4(%struct.sc_info* %28, i32 %29, i32 %30)
  %32 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %33 = load i32, i32* @CMPCI_REG_MISC, align 4
  %34 = load i32, i32* @CMPCI_REG_N4SPK3D, align 4
  %35 = call i32 @cmi_set4(%struct.sc_info* %32, i32 %33, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %37 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %38 = load i32, i32* @CMPCI_REG_SPDIF1_ENABLE, align 4
  %39 = call i32 @cmi_clr4(%struct.sc_info* %36, i32 %37, i32 %38)
  %40 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %41 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %42 = load i32, i32* @CMPCI_REG_SPDIF_LOOP, align 4
  %43 = call i32 @cmi_clr4(%struct.sc_info* %40, i32 %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @cmi_set4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cmi_clr4(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
