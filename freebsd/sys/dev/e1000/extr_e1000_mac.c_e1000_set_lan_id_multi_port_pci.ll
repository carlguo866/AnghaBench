; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_set_lan_id_multi_port_pci.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_set_lan_id_multi_port_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_bus_info }
%struct.e1000_bus_info = type { i32 }

@PCI_HEADER_TYPE_REGISTER = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_MULTIFUNC = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_MASK = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_set_lan_id_multi_port_pci(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_bus_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_bus_info* %7, %struct.e1000_bus_info** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @PCI_HEADER_TYPE_REGISTER, align 4
  %10 = call i32 @e1000_read_pci_cfg(%struct.e1000_hw* %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PCI_HEADER_TYPE_MULTIFUNC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = load i32, i32* @E1000_STATUS, align 4
  %18 = call i32 @E1000_READ_REG(%struct.e1000_hw* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @E1000_STATUS_FUNC_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @E1000_STATUS_FUNC_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @e1000_read_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
