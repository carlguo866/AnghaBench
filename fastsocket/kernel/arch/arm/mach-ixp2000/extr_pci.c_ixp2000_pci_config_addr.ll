; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_ixp2000_pci_config_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_ixp2000_pci_config_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP2000_PCI_CFG0_VIRT_BASE = common dso_local global i32 0, align 4
@IXP2000_PCI_CFG1_VIRT_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ixp2000_pci_config_addr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @PCI_SLOT(i32 %9)
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %52

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, -4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @IXP2000_PCI_CFG0_VIRT_BASE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @PCI_SLOT(i32 %20)
  %22 = add nsw i32 %21, 16
  %23 = shl i32 1, %22
  %24 = or i32 %19, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PCI_FUNC(i32 %25)
  %27 = shl i32 %26, 8
  %28 = or i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %8, align 8
  br label %50

33:                                               ; preds = %13
  %34 = load i32, i32* @IXP2000_PCI_CFG1_VIRT_BASE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @PCI_SLOT(i32 %38)
  %40 = shl i32 %39, 11
  %41 = or i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @PCI_FUNC(i32 %42)
  %44 = shl i32 %43, 8
  %45 = or i32 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %8, align 8
  br label %50

50:                                               ; preds = %33, %18
  %51 = load i32*, i32** %8, align 8
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i32*, i32** %4, align 8
  ret i32* %53
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
