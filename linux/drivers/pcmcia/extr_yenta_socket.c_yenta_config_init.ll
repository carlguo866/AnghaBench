; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pci_bus_region = type { i32 }

@CB_LEGACY_MODE_BASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_WAIT = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@CB_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@CB_BRIDGE_CRST = common dso_local global i32 0, align 4
@CB_BRIDGE_PREFETCH1 = common dso_local global i32 0, align 4
@CB_BRIDGE_ISAEN = common dso_local global i32 0, align 4
@CB_BRIDGE_VGAEN = common dso_local global i32 0, align 4
@CB_BRIDGE_PREFETCH0 = common dso_local global i32 0, align 4
@CB_BRIDGE_POSTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*)* @yenta_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_config_init(%struct.yenta_socket* %0) #0 {
  %2 = alloca %struct.yenta_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %2, align 8
  %6 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %7 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %10 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call i32 @pcibios_resource_to_bus(i32 %13, %struct.pci_bus_region* %5, i32* %17)
  %19 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %20 = load i32, i32* @CB_LEGACY_MODE_BASE, align 4
  %21 = call i32 @config_writel(%struct.yenta_socket* %19, i32 %20, i32 0)
  %22 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %23 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %24 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @config_writel(%struct.yenta_socket* %22, i32 %23, i32 %25)
  %27 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %28 = load i32, i32* @PCI_COMMAND, align 4
  %29 = load i32, i32* @PCI_COMMAND_IO, align 4
  %30 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PCI_COMMAND_WAIT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @config_writew(%struct.yenta_socket* %27, i32 %28, i32 %35)
  %37 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %38 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %39 = load i32, i32* @L1_CACHE_BYTES, align 4
  %40 = sdiv i32 %39, 4
  %41 = call i32 @config_writeb(%struct.yenta_socket* %37, i32 %38, i32 %40)
  %42 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %43 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %44 = call i32 @config_writeb(%struct.yenta_socket* %42, i32 %43, i32 168)
  %45 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %46 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 16
  %55 = or i32 -1342177280, %54
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 8
  %64 = or i32 %55, %63
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %64, %69
  %71 = call i32 @config_writel(%struct.yenta_socket* %45, i32 %46, i32 %70)
  %72 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %73 = load i32, i32* @CB_BRIDGE_CONTROL, align 4
  %74 = call i32 @config_readw(%struct.yenta_socket* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @CB_BRIDGE_CRST, align 4
  %76 = load i32, i32* @CB_BRIDGE_PREFETCH1, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CB_BRIDGE_ISAEN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CB_BRIDGE_VGAEN, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @CB_BRIDGE_PREFETCH0, align 4
  %86 = load i32, i32* @CB_BRIDGE_POSTEN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %91 = load i32, i32* @CB_BRIDGE_CONTROL, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @config_writew(%struct.yenta_socket* %90, i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, i32*) #1

declare dso_local i32 @config_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @config_writew(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @config_writeb(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @config_readw(%struct.yenta_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
