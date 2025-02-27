; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_read_pci_cfg_word_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_read_pci_cfg_word_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64, i32*)* @ixgbe_read_pci_cfg_word_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_pci_cfg_word_parent(%struct.ixgbe_adapter* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pci_bus*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.pci_bus*, %struct.pci_bus** %16, align 8
  store %struct.pci_bus* %17, %struct.pci_bus** %10, align 8
  %18 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %19 = icmp ne %struct.pci_bus* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %9, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %30 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %31 = call i32 @pci_find_capability(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @pci_read_config_word(%struct.pci_dev* %36, i64 %40, i32* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %34, %27, %20
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
