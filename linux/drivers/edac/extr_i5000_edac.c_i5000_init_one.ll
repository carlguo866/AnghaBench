; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"MC:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @i5000_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5000_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i5000_probe1(%struct.pci_dev* %15, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @i5000_probe1(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
