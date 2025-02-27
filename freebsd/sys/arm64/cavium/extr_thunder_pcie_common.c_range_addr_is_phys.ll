; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_common.c_range_addr_is_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_common.c_range_addr_is_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_range = type { i64, i64 }

@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @range_addr_is_phys(%struct.pcie_range* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcie_range*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcie_range*, align 8
  %9 = alloca i32, align 4
  store %struct.pcie_range* %0, %struct.pcie_range** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load %struct.pcie_range*, %struct.pcie_range** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %15, i64 %17
  store %struct.pcie_range* %18, %struct.pcie_range** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.pcie_range*, %struct.pcie_range** %8, align 8
  %21 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.pcie_range*, %struct.pcie_range** %8, align 8
  %27 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pcie_range*, %struct.pcie_range** %8, align 8
  %30 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = icmp slt i64 %25, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.pcie_range*, %struct.pcie_range** %8, align 8
  %37 = getelementptr inbounds %struct.pcie_range, %struct.pcie_range* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %46

41:                                               ; preds = %34, %24, %14
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
