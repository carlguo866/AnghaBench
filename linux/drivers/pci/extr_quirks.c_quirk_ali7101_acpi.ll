; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_ali7101_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_ali7101_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"ali7101 ACPI\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ali7101 SMB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_ali7101_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_ali7101_acpi(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %5 = call i32 @quirk_io_region(%struct.pci_dev* %3, i32 224, i32 64, i64 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %8 = add nsw i64 %7, 1
  %9 = call i32 @quirk_io_region(%struct.pci_dev* %6, i32 226, i32 32, i64 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @quirk_io_region(%struct.pci_dev*, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
