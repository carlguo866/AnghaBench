; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_is_paging_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_is_paging_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32* }

@RK_MMU_STATUS = common dso_local global i32 0, align 4
@RK_MMU_STATUS_PAGING_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_iommu*)* @rk_iommu_is_paging_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_is_paging_enabled(%struct.rk_iommu* %0) #0 {
  %2 = alloca %struct.rk_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rk_iommu* %0, %struct.rk_iommu** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %8 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = load %struct.rk_iommu*, %struct.rk_iommu** %2, align 8
  %13 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RK_MMU_STATUS, align 4
  %20 = call i32 @rk_iommu_read(i32 %18, i32 %19)
  %21 = load i32, i32* @RK_MMU_STATUS_PAGING_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @rk_iommu_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
