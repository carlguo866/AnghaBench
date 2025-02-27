; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_pmd_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_srmmu.c_srmmu_pmd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@SRMMU_PTD_PMASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32)* @srmmu_pmd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @srmmu_pmd_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @pmd_val(i32 %3)
  %5 = call i64 @srmmu_device_memory(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @BUG()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @pmd_val(i32 %10)
  %12 = load i32, i32* @SRMMU_PTD_PMASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = sub nsw i32 %14, 4
  %16 = ashr i32 %13, %15
  %17 = call %struct.page* @pfn_to_page(i32 %16)
  ret %struct.page* %17
}

declare dso_local i64 @srmmu_device_memory(i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
