; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_swiotlb.c_swiotlb_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_swiotlb.c_swiotlb_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@swiotlb_force = common dso_local global i32 0, align 4
@io_tlb_overflow_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"map_single: bounce buffer is not DMA'ble\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swiotlb_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_attrs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %13, align 8
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = call i64 @page_to_phys(%struct.page* %17)
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %14, align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @phys_to_dma(%struct.device* %21, i64 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @DMA_NONE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @dma_capable(%struct.device* %29, i32 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* @swiotlb_force, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %66

39:                                               ; preds = %34, %6
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i8* @map_single(%struct.device* %40, i64 %41, i64 %42, i32 %43)
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @swiotlb_full(%struct.device* %48, i64 %49, i32 %50, i32 1)
  %52 = load i8*, i8** @io_tlb_overflow_buffer, align 8
  store i8* %52, i8** %16, align 8
  br label %53

53:                                               ; preds = %47, %39
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 @swiotlb_virt_to_bus(%struct.device* %54, i8* %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @dma_capable(%struct.device* %57, i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %53
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %37
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @phys_to_dma(%struct.device*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dma_capable(%struct.device*, i32, i64) #1

declare dso_local i8* @map_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @swiotlb_full(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @swiotlb_virt_to_bus(%struct.device*, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
