; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_set_mwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_set_mwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"enabling Mem-Wr-Inval\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_set_mwi(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_set_cacheline_size(%struct.pci_dev* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* @PCI_COMMAND, align 4
  %15 = call i32 @pci_read_config_word(%struct.pci_dev* %13, i32 %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_dbg(%struct.pci_dev* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* @PCI_COMMAND, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pci_write_config_word(%struct.pci_dev* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %12
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pci_set_cacheline_size(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
