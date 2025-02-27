; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_dma_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_dma_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.pci_dev = type { i32 }
%struct.sn_pcibus_provider = type { i32 (%struct.pci_dev.0*, i32, i32)* }
%struct.pci_dev.0 = type opaque

@pci_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32)* @sn_dma_free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_dma_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.sn_pcibus_provider*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.pci_dev* @to_pci_dev(%struct.device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %14 = call %struct.sn_pcibus_provider* @SN_PCIDEV_BUSPROVIDER(%struct.pci_dev* %13)
  store %struct.sn_pcibus_provider* %14, %struct.sn_pcibus_provider** %10, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @pci_bus_type
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %10, align 8
  %22 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %21, i32 0, i32 0
  %23 = load i32 (%struct.pci_dev.0*, i32, i32)*, i32 (%struct.pci_dev.0*, i32, i32)** %22, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %25 = bitcast %struct.pci_dev* %24 to %struct.pci_dev.0*
  %26 = load i32, i32* %8, align 4
  %27 = call i32 %23(%struct.pci_dev.0* %25, i32 %26, i32 0)
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @get_order(i64 %30)
  %32 = call i32 @free_pages(i64 %29, i32 %31)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.sn_pcibus_provider* @SN_PCIDEV_BUSPROVIDER(%struct.pci_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
