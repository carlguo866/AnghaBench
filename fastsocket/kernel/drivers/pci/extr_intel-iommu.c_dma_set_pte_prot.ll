; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_set_pte_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_set_pte_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pte = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_pte*, i64)* @dma_set_pte_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_set_pte_prot(%struct.dma_pte* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_pte*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_pte* %0, %struct.dma_pte** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dma_pte*, %struct.dma_pte** %3, align 8
  %6 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 3
  %12 = or i64 %9, %11
  %13 = trunc i64 %12 to i32
  %14 = load %struct.dma_pte*, %struct.dma_pte** %3, align 8
  %15 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
