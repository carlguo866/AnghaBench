; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_new_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_batch = type { i64, i64 }

@iommu_batch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @iommu_batch_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_batch_new_entry(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_batch*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.iommu_batch* @this_cpu_ptr(i32* @iommu_batch)
  store %struct.iommu_batch* %6, %struct.iommu_batch** %5, align 8
  %7 = load %struct.iommu_batch*, %struct.iommu_batch** %5, align 8
  %8 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.iommu_batch*, %struct.iommu_batch** %5, align 8
  %11 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %9, %12
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.iommu_batch*, %struct.iommu_batch** %5, align 8
  %19 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.iommu_batch*, %struct.iommu_batch** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @iommu_batch_flush(%struct.iommu_batch* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.iommu_batch*, %struct.iommu_batch** %5, align 8
  %29 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %16
  ret void
}

declare dso_local %struct.iommu_batch* @this_cpu_ptr(i32*) #1

declare dso_local i32 @iommu_batch_flush(%struct.iommu_batch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
