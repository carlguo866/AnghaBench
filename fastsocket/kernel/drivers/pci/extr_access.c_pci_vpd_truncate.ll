; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pci_vpd_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pci_vpd_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_vpd_truncate(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %13
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %37, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %24
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %21, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
