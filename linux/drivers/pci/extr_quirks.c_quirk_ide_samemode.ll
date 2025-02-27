; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_ide_samemode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_ide_samemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IDE mode mismatch; forcing legacy mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_ide_samemode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_ide_samemode(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_CLASS_PROG, align 4
  %6 = call i32 @pci_read_config_byte(%struct.pci_dev* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_info(%struct.pci_dev* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, -6
  store i32 %26, i32* %3, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -6
  store i32 %30, i32* %28, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load i32, i32* @PCI_CLASS_PROG, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pci_write_config_byte(%struct.pci_dev* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %18, %14
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
