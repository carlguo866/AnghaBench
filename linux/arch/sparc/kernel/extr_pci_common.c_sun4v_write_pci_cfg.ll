; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4v_write_pci_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_sun4v_write_pci_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @sun4v_write_pci_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4v_write_pci_cfg(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 1
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %17, align 8
  store %struct.pci_pbm_info* %18, %struct.pci_pbm_info** %11, align 8
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %20 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @PCI_SLOT(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PCI_FUNC(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @config_out_of_range(%struct.pci_pbm_info* %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %46

36:                                               ; preds = %5
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @HV_PCI_DEVICE_BUILD(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pci_sun4v_config_put(i32 %37, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %35
  %47 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %47
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i64 @config_out_of_range(%struct.pci_pbm_info*, i32, i32, i32) #1

declare dso_local i32 @pci_sun4v_config_put(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HV_PCI_DEVICE_BUILD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
