; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_pgtable.c_pte_alloc_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_pgtable.c_pte_alloc_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_REPEAT = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @pte_alloc_one(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @__GFP_REPEAT, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.page* @alloc_pages(i32 %8, i32 0)
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @clear_highpage(%struct.page* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %16
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @clear_highpage(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
