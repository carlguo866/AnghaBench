; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_matrox_w1.c_matrox_w1_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_matrox_w1.c_matrox_w1_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.matrox_device = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @matrox_w1_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrox_w1_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.matrox_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.matrox_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.matrox_device* %5, %struct.matrox_device** %3, align 8
  %6 = load %struct.matrox_device*, %struct.matrox_device** %3, align 8
  %7 = getelementptr inbounds %struct.matrox_device, %struct.matrox_device* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.matrox_device*, %struct.matrox_device** %3, align 8
  %12 = getelementptr inbounds %struct.matrox_device, %struct.matrox_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @w1_remove_master_device(i32 %13)
  %15 = load %struct.matrox_device*, %struct.matrox_device** %3, align 8
  %16 = getelementptr inbounds %struct.matrox_device, %struct.matrox_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @iounmap(i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.matrox_device*, %struct.matrox_device** %3, align 8
  %21 = call i32 @kfree(%struct.matrox_device* %20)
  ret void
}

declare dso_local %struct.matrox_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @w1_remove_master_device(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.matrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
