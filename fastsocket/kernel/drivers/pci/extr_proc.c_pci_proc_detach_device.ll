; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_proc.c_pci_proc_detach_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_proc.c_pci_proc_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.proc_dir_entry*, %struct.TYPE_2__* }
%struct.proc_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_proc_detach_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  store %struct.proc_dir_entry* %6, %struct.proc_dir_entry** %3, align 8
  %7 = icmp ne %struct.proc_dir_entry* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %10 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @remove_proc_entry(i32 %11, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %19, align 8
  br label %20

20:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local i32 @remove_proc_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
