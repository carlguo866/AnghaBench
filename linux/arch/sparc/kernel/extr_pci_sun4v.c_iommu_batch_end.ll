; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_batch = type { i64 }

@iommu_batch = common dso_local global i32 0, align 4
@PGLIST_NENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @iommu_batch_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_batch_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu_batch*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.iommu_batch* @this_cpu_ptr(i32* @iommu_batch)
  store %struct.iommu_batch* %4, %struct.iommu_batch** %3, align 8
  %5 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %6 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PGLIST_NENTS, align 8
  %9 = icmp sge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.iommu_batch*, %struct.iommu_batch** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @iommu_batch_flush(%struct.iommu_batch* %12, i32 %13)
  ret i64 %14
}

declare dso_local %struct.iommu_batch* @this_cpu_ptr(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @iommu_batch_flush(%struct.iommu_batch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
