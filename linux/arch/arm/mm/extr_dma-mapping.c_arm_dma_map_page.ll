; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_arm_dma_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dma-mapping.c_arm_dma_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)* @arm_dma_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_dma_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_ATTR_SKIP_CPU_SYNC, align 8
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load %struct.page*, %struct.page** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @__dma_page_cpu_to_dev(%struct.page* %18, i64 %19, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %6
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i32 @page_to_pfn(%struct.page* %25)
  %27 = call i64 @pfn_to_dma(%struct.device* %24, i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  ret i64 %29
}

declare dso_local i32 @__dma_page_cpu_to_dev(%struct.page*, i64, i64, i32) #1

declare dso_local i64 @pfn_to_dma(%struct.device*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
