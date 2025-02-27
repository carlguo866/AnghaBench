; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.tegra_smmu_as = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMMU_PTE_NONSECURE = common dso_local global i64 0, align 8
@IOMMU_READ = common dso_local global i32 0, align 4
@SMMU_PTE_READABLE = common dso_local global i64 0, align 8
@IOMMU_WRITE = common dso_local global i32 0, align 4
@SMMU_PTE_WRITABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i32, i64, i32)* @tegra_smmu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_smmu_map(%struct.iommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_smmu_as*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %17 = call %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain* %16)
  store %struct.tegra_smmu_as* %17, %struct.tegra_smmu_as** %12, align 8
  %18 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64* @as_get_pte(%struct.tegra_smmu_as* %18, i64 %19, i32* %13)
  store i64* %20, i64** %15, align 8
  %21 = load i64*, i64** %15, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %63

26:                                               ; preds = %5
  %27 = load i64*, i64** %15, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @tegra_smmu_pte_get_use(%struct.tegra_smmu_as* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i64, i64* @SMMU_PTE_NONSECURE, align 8
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @IOMMU_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @SMMU_PTE_READABLE, align 8
  %42 = load i64, i64* %14, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %14, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @IOMMU_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @SMMU_PTE_WRITABLE, align 8
  %51 = load i64, i64* %14, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64*, i64** %15, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @__phys_to_pfn(i32 %58)
  %60 = load i64, i64* %14, align 8
  %61 = or i64 %59, %60
  %62 = call i32 @tegra_smmu_set_pte(%struct.tegra_smmu_as* %54, i64 %55, i64* %56, i32 %57, i64 %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %53, %23
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain*) #1

declare dso_local i64* @as_get_pte(%struct.tegra_smmu_as*, i64, i32*) #1

declare dso_local i32 @tegra_smmu_pte_get_use(%struct.tegra_smmu_as*, i64) #1

declare dso_local i32 @tegra_smmu_set_pte(%struct.tegra_smmu_as*, i64, i64*, i32, i64) #1

declare dso_local i64 @__phys_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
