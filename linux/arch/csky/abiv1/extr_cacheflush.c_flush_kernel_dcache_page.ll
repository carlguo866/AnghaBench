; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/abiv1/extr_cacheflush.c_flush_kernel_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/abiv1/extr_cacheflush.c_flush_kernel_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_kernel_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.address_space* @page_mapping_file(%struct.page* %4)
  store %struct.address_space* %5, %struct.address_space** %3, align 8
  %6 = load %struct.address_space*, %struct.address_space** %3, align 8
  %7 = icmp ne %struct.address_space* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = call i64 @mapping_mapped(%struct.address_space* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = call i32 (...) @dcache_wbinv_all()
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i64 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @dcache_wbinv_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
