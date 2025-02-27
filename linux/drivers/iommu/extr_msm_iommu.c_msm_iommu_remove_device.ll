; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msm_iommu_dev = type { i32 }

@msm_iommu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @msm_iommu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_iommu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.msm_iommu_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @msm_iommu_lock, i64 %5)
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.msm_iommu_dev* @find_iommu_for_dev(%struct.device* %7)
  store %struct.msm_iommu_dev* %8, %struct.msm_iommu_dev** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @msm_iommu_lock, i64 %9)
  %11 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %12 = icmp ne %struct.msm_iommu_dev* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %3, align 8
  %15 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @iommu_device_unlink(i32* %15, %struct.device* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @iommu_group_remove_device(%struct.device* %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.msm_iommu_dev* @find_iommu_for_dev(%struct.device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
