; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_64k_pages_available.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c_spu_64k_pages_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@MMU_PAGE_64K = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_64k_pages_available() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %2 = load i64, i64* @MMU_PAGE_64K, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i64 %2
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
