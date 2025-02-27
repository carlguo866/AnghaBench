; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pfn_level_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pfn_level_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pte = type { i32 }
%struct.dmar_domain = type { %struct.dma_pte*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_pte* (%struct.dmar_domain*, i64, i32, i32*)* @dma_pfn_level_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dma_pte*, align 8
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dma_pte*, align 8
  %11 = alloca %struct.dma_pte*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %15 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @agaw_to_level(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %19 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %18, i32 0, i32 0
  %20 = load %struct.dma_pte*, %struct.dma_pte** %19, align 8
  store %struct.dma_pte* %20, %struct.dma_pte** %10, align 8
  br label %21

21:                                               ; preds = %53, %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @pfn_level_offset(i64 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %29, i64 %31
  store %struct.dma_pte* %32, %struct.dma_pte** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  store %struct.dma_pte* %37, %struct.dma_pte** %5, align 8
  br label %60

38:                                               ; preds = %25
  %39 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %40 = call i32 @dma_pte_present(%struct.dma_pte* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %47 = call i64 @dma_pte_superpage(%struct.dma_pte* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  store %struct.dma_pte* %52, %struct.dma_pte** %5, align 8
  br label %60

53:                                               ; preds = %45
  %54 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %55 = call i32 @dma_pte_addr(%struct.dma_pte* %54)
  %56 = call %struct.dma_pte* @phys_to_virt(i32 %55)
  store %struct.dma_pte* %56, %struct.dma_pte** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  br label %21

59:                                               ; preds = %42, %21
  store %struct.dma_pte* null, %struct.dma_pte** %5, align 8
  br label %60

60:                                               ; preds = %59, %49, %36
  %61 = load %struct.dma_pte*, %struct.dma_pte** %5, align 8
  ret %struct.dma_pte* %61
}

declare dso_local i32 @agaw_to_level(i32) #1

declare dso_local i32 @pfn_level_offset(i64, i32) #1

declare dso_local i32 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i64 @dma_pte_superpage(%struct.dma_pte*) #1

declare dso_local %struct.dma_pte* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
