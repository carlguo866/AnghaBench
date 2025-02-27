; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_get_resv_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_get_resv_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.list_head = type { i32 }
%struct.iommu_resv_region = type { i32 }

@IOMMU_WRITE = common dso_local global i32 0, align 4
@IOMMU_NOEXEC = common dso_local global i32 0, align 4
@IOMMU_MMIO = common dso_local global i32 0, align 4
@MSI_IOVA_BASE = common dso_local global i32 0, align 4
@MSI_IOVA_LENGTH = common dso_local global i32 0, align 4
@IOMMU_RESV_SW_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.list_head*)* @arm_smmu_get_resv_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_get_resv_regions(%struct.device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.iommu_resv_region*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load i32, i32* @IOMMU_WRITE, align 4
  %8 = load i32, i32* @IOMMU_NOEXEC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IOMMU_MMIO, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @MSI_IOVA_BASE, align 4
  %13 = load i32, i32* @MSI_IOVA_LENGTH, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IOMMU_RESV_SW_MSI, align 4
  %16 = call %struct.iommu_resv_region* @iommu_alloc_resv_region(i32 %12, i32 %13, i32 %14, i32 %15)
  store %struct.iommu_resv_region* %16, %struct.iommu_resv_region** %5, align 8
  %17 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %5, align 8
  %18 = icmp ne %struct.iommu_resv_region* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %5, align 8
  %22 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %21, i32 0, i32 0
  %23 = load %struct.list_head*, %struct.list_head** %4, align 8
  %24 = call i32 @list_add_tail(i32* %22, %struct.list_head* %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.list_head*, %struct.list_head** %4, align 8
  %27 = call i32 @iommu_dma_get_resv_regions(%struct.device* %25, %struct.list_head* %26)
  br label %28

28:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.iommu_resv_region* @iommu_alloc_resv_region(i32, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @iommu_dma_get_resv_regions(%struct.device*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
