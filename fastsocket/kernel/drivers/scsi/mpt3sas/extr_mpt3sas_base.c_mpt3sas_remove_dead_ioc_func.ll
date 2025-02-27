; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_remove_dead_ioc_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_mpt3sas_remove_dead_ioc_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mpt3sas_remove_dead_ioc_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt3sas_remove_dead_ioc_func(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.MPT3SAS_ADAPTER*
  store %struct.MPT3SAS_ADAPTER* %7, %struct.MPT3SAS_ADAPTER** %4, align 8
  %8 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %9 = icmp eq %struct.MPT3SAS_ADAPTER* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = icmp eq %struct.pci_dev* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %21

18:                                               ; preds = %11
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = call i32 @pci_remove_bus_device(%struct.pci_dev* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %17, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @pci_remove_bus_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
