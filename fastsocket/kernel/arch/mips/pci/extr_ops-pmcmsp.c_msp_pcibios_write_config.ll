; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_pcibios_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %5
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %11, align 4
  %19 = and i32 255, %18
  %20 = call i64 @msp_pcibios_write_config_byte(%struct.pci_bus* %15, i32 %16, i32 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %6, align 4
  br label %54

23:                                               ; preds = %14
  br label %52

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = and i32 65535, %31
  %33 = call i64 @msp_pcibios_write_config_word(%struct.pci_bus* %28, i32 %29, i32 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %54

36:                                               ; preds = %27
  br label %51

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @msp_pcibios_write_config_dword(%struct.pci_bus* %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %54

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %36
  br label %52

52:                                               ; preds = %51, %23
  %53 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %49, %47, %35, %22
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @msp_pcibios_write_config_byte(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i64 @msp_pcibios_write_config_word(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i64 @msp_pcibios_write_config_dword(%struct.pci_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
