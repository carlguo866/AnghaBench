; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_acpi.c_pciehp_acpi_slot_detection_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_acpi.c_pciehp_acpi_slot_detection_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@slot_detection_mode = common dso_local global i64 0, align 8
@PCIEHP_DETECT_ACPI = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_acpi_slot_detection_check(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load i64, i64* @slot_detection_mode, align 8
  %5 = load i64, i64* @PCIEHP_DETECT_ACPI, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @DEVICE_ACPI_HANDLE(i32* %10)
  %12 = call i64 @acpi_pci_detect_ejectable(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @acpi_pci_detect_ejectable(i32) #1

declare dso_local i32 @DEVICE_ACPI_HANDLE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
