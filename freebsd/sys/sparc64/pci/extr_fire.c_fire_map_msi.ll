; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_map_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_map_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32, i32, i64, i32, i32 }
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid MSI 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIRE_MSIX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid MSI-X 0x%x\0A\00", align 1
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @fire_map_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_map_msi(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fire_softc*, align 8
  %13 = alloca %struct.pci_devinfo*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.fire_softc* @device_get_softc(i32 %14)
  store %struct.fire_softc* %15, %struct.fire_softc** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.pci_devinfo* @device_get_ivars(i32 %16)
  store %struct.pci_devinfo* %17, %struct.pci_devinfo** %13, align 8
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.fire_softc*, %struct.fire_softc** %12, align 8
  %27 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %6, align 4
  br label %89

37:                                               ; preds = %24
  br label %60

38:                                               ; preds = %5
  %39 = load %struct.fire_softc*, %struct.fire_softc** %12, align 8
  %40 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FIRE_MSIX, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %6, align 4
  br label %89

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @fls(i32 %48)
  %50 = load %struct.fire_softc*, %struct.fire_softc** %12, align 8
  %51 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %6, align 4
  br label %89

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %62 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %69 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.fire_softc*, %struct.fire_softc** %12, align 8
  %78 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %86

81:                                               ; preds = %67, %60
  %82 = load %struct.fire_softc*, %struct.fire_softc** %12, align 8
  %83 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %54, %45, %32
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.fire_softc* @device_get_softc(i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
