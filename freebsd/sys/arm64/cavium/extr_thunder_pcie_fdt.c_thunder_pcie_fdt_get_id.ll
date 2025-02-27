; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_fdt.c_thunder_pcie_fdt_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_fdt.c_thunder_pcie_fdt_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_ID_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@PCI_RID_DOMAIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @thunder_pcie_fdt_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pcie_fdt_get_id(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PCI_ID_MSI, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i64*, i64** %9, align 8
  %20 = call i32 @pcib_get_id(i32 %16, i32 %17, i32 %18, i64* %19)
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ofw_bus_get_node(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @OF_hasprop(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @generic_pcie_get_id(i32 %28, i32 %29, i32 %30, i64* %31)
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pci_get_rid(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pci_get_domain(i32 %36)
  %38 = load i32, i32* @PCI_RID_DOMAIN_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %27, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @pcib_get_id(i32, i32, i32, i64*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @generic_pcie_get_id(i32, i32, i32, i64*) #1

declare dso_local i32 @pci_get_rid(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
