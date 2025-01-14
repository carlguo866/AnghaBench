; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc_features = type { i32 }
%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_epc_features* (%struct.pci_epc*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_epc_features* @pci_epc_get_features(%struct.pci_epc* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_epc_features*, align 8
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_epc_features*, align 8
  %7 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %14 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store %struct.pci_epc_features* null, %struct.pci_epc_features** %3, align 8
  br label %44

18:                                               ; preds = %11
  %19 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %20 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.pci_epc_features* (%struct.pci_epc*, i64)*, %struct.pci_epc_features* (%struct.pci_epc*, i64)** %22, align 8
  %24 = icmp ne %struct.pci_epc_features* (%struct.pci_epc*, i64)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.pci_epc_features* null, %struct.pci_epc_features** %3, align 8
  br label %44

26:                                               ; preds = %18
  %27 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %28 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %32 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.pci_epc_features* (%struct.pci_epc*, i64)*, %struct.pci_epc_features* (%struct.pci_epc*, i64)** %34, align 8
  %36 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call %struct.pci_epc_features* %35(%struct.pci_epc* %36, i64 %37)
  store %struct.pci_epc_features* %38, %struct.pci_epc_features** %6, align 8
  %39 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %40 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.pci_epc_features*, %struct.pci_epc_features** %6, align 8
  store %struct.pci_epc_features* %43, %struct.pci_epc_features** %3, align 8
  br label %44

44:                                               ; preds = %26, %25, %17
  %45 = load %struct.pci_epc_features*, %struct.pci_epc_features** %3, align 8
  ret %struct.pci_epc_features* %45
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pci_epc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
