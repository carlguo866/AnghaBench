; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_crst_table_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_crst_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @crst_table_alloc(%struct.mm_struct* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.page* @alloc_pages(i32 %5, i32 2)
  store %struct.page* %6, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = icmp ne %struct.page* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64* null, i64** %2, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @arch_set_page_dat(%struct.page* %11, i32 2)
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i64 @page_to_phys(%struct.page* %13)
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %2, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i64*, i64** %2, align 8
  ret i64* %17
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @arch_set_page_dat(%struct.page*, i32) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
