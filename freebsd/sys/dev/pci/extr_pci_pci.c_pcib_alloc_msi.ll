; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32 }

@PCIB_DISABLE_MSI = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcib_alloc_msi(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pcib_softc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pcib_softc* @device_get_softc(i32 %14)
  store %struct.pcib_softc* %15, %struct.pcib_softc** %12, align 8
  %16 = load %struct.pcib_softc*, %struct.pcib_softc** %12, align 8
  %17 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCIB_DISABLE_MSI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %6, align 4
  br label %34

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @PCIB_ALLOC_MSI(i32 %28, i32 %29, i32 %30, i32 %31, i32* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %24, %22
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIB_ALLOC_MSI(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
