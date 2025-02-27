; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt_pci_intr_cookie = type { i32, %struct.gt_pci_softc* }
%struct.gt_pci_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gt_pci_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt_pci_unmask_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gt_pci_intr_cookie*, align 8
  %4 = alloca %struct.gt_pci_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.gt_pci_intr_cookie*
  store %struct.gt_pci_intr_cookie* %7, %struct.gt_pci_intr_cookie** %3, align 8
  %8 = load %struct.gt_pci_intr_cookie*, %struct.gt_pci_intr_cookie** %3, align 8
  %9 = getelementptr inbounds %struct.gt_pci_intr_cookie, %struct.gt_pci_intr_cookie* %8, i32 0, i32 1
  %10 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %9, align 8
  store %struct.gt_pci_softc* %10, %struct.gt_pci_softc** %4, align 8
  %11 = load %struct.gt_pci_intr_cookie*, %struct.gt_pci_intr_cookie** %3, align 8
  %12 = getelementptr inbounds %struct.gt_pci_intr_cookie, %struct.gt_pci_intr_cookie* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %4, align 8
  %29 = call i32 @gt_pci_set_icus(%struct.gt_pci_softc* %28)
  ret void
}

declare dso_local i32 @gt_pci_set_icus(%struct.gt_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
