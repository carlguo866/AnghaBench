; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_write_pcie_cap_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_write_pcie_cap_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_adapter* }
%struct.igc_adapter = type { i32 }

@IGC_ERR_CONFIG = common dso_local global i32 0, align 4
@IGC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_write_pcie_cap_reg(%struct.igc_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igc_adapter*, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %10 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %9, i32 0, i32 0
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %10, align 8
  store %struct.igc_adapter* %11, %struct.igc_adapter** %8, align 8
  %12 = load %struct.igc_adapter*, %struct.igc_adapter** %8, align 8
  %13 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_is_pcie(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @IGC_ERR_CONFIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.igc_adapter*, %struct.igc_adapter** %8, align 8
  %22 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pcie_capability_write_word(i32 %23, i32 %24, i32 %26)
  %28 = load i32, i32* @IGC_SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_capability_write_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
