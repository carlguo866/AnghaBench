; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_dca_provider_ioat_ver_3_0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_dca_provider_ioat_ver_3_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i64, i64 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG0 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG1 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG2 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG3 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG4 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG5 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG6 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_IOAT_TBG7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dca_provider_ioat_ver_3_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dca_provider_ioat_ver_3_0(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.pci_dev* @to_pci_dev(%struct.device* %4)
  store %struct.pci_dev* %5, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG0, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %59, label %17

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %59, label %23

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %59, label %29

29:                                               ; preds = %23
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI_DEVICE_ID_INTEL_IOAT_TBG7, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %47, %41, %35, %29, %23, %17, %11
  %60 = phi i1 [ true, %47 ], [ true, %41 ], [ true, %35 ], [ true, %29 ], [ true, %23 ], [ true, %17 ], [ true, %11 ], [ %58, %53 ]
  br label %61

61:                                               ; preds = %59, %1
  %62 = phi i1 [ false, %1 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
