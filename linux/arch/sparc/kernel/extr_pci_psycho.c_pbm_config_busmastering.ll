; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_psycho.c_pbm_config_busmastering.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_psycho.c_pbm_config_busmastering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32 }

@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*)* @pbm_config_busmastering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pbm_config_busmastering(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i32*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %4 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %5 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %6 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %9 = call i32* @psycho_pci_config_mkaddr(%struct.pci_pbm_info* %4, i32 %7, i32 0, i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @pci_config_write8(i32* %10, i32 16)
  %12 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %13 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %14 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %17 = call i32* @psycho_pci_config_mkaddr(%struct.pci_pbm_info* %12, i32 %15, i32 0, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pci_config_write8(i32* %18, i32 64)
  ret void
}

declare dso_local i32* @psycho_pci_config_mkaddr(%struct.pci_pbm_info*, i32, i32, i32) #1

declare dso_local i32 @pci_config_write8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
