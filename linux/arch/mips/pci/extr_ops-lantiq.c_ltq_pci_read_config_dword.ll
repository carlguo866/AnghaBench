; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-lantiq.c_ltq_pci_read_config_dword.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-lantiq.c_ltq_pci_read_config_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ltq_pci_read_config_dword(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @PCI_ACCESS_READ, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @ltq_pci_config_access(i32 %13, %struct.pci_bus* %14, i32 %15, i32 %16, i32* %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %20, i32* %6, align 4
  br label %49

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 3
  %28 = shl i32 %27, 3
  %29 = ashr i32 %25, %28
  %30 = and i32 %29, 255
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  br label %47

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 3
  %39 = shl i32 %38, 3
  %40 = ashr i32 %36, %39
  %41 = and i32 %40, 65535
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %35
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @ltq_pci_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
