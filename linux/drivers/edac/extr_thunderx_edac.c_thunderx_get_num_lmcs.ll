; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_get_num_lmcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_get_num_lmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_VENDOR_ID_CAVIUM = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_THUNDER_LMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thunderx_get_num_lmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_get_num_lmcs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* @PCI_VENDOR_ID_CAVIUM, align 4
  %7 = load i32, i32* @PCI_DEVICE_ID_THUNDER_LMC, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.pci_dev* @pci_get_device(i32 %6, i32 %7, %struct.pci_dev* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %5
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %5, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
