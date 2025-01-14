; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla25xx_pci_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla25xx_pci_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla25xx_pci_config(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %4, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = call i32 @pci_set_master(%struct.TYPE_11__* %10)
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i32 @pci_try_set_mwi(%struct.TYPE_11__* %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = load i32, i32* @PCI_COMMAND, align 4
  %20 = call i32 @pci_read_config_word(%struct.TYPE_11__* %18, i32 %19, i32* %3)
  %21 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %22 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = load i32, i32* @PCI_COMMAND, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_write_config_word(%struct.TYPE_11__* %32, i32 %33, i32 %34)
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i64 @pci_is_pcie(%struct.TYPE_11__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @pcie_set_readrq(%struct.TYPE_11__* %44, i32 4096)
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = call i32 @pci_disable_rom(%struct.TYPE_11__* %49)
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @QLA_SUCCESS, align 4
  ret i32 %58
}

declare dso_local i32 @pci_set_master(%struct.TYPE_11__*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.TYPE_11__*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @pci_is_pcie(%struct.TYPE_11__*) #1

declare dso_local i32 @pcie_set_readrq(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pci_disable_rom(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
