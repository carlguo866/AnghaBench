; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mobiveil_pcie = type { i32 }

@LTSSM_STATUS = common dso_local global i32 0, align 4
@LTSSM_STATUS_L0_MASK = common dso_local global i32 0, align 4
@LTSSM_STATUS_L0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mobiveil_pcie*)* @mobiveil_pcie_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_pcie_link_up(%struct.mobiveil_pcie* %0) #0 {
  %2 = alloca %struct.mobiveil_pcie*, align 8
  store %struct.mobiveil_pcie* %0, %struct.mobiveil_pcie** %2, align 8
  %3 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %2, align 8
  %4 = load i32, i32* @LTSSM_STATUS, align 4
  %5 = call i32 @csr_readl(%struct.mobiveil_pcie* %3, i32 %4)
  %6 = load i32, i32* @LTSSM_STATUS_L0_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @LTSSM_STATUS_L0, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare dso_local i32 @csr_readl(%struct.mobiveil_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
