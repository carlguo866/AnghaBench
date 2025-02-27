; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_clear_tce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_clear_tce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.iommu_table = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.iommu_table*, i64)* @kvmppc_clear_tce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_clear_tce(%struct.mm_struct* %0, %struct.iommu_table* %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.iommu_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* @DMA_NONE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @iommu_tce_xchg_no_kill(%struct.mm_struct* %10, %struct.iommu_table* %11, i64 %12, i64* %7, i32* %8)
  ret void
}

declare dso_local i32 @iommu_tce_xchg_no_kill(%struct.mm_struct*, %struct.iommu_table*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
