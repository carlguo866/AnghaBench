; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }
%struct.bus_dmamap_dmar = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"map not locked and not sleepable context %p\00", align 1
@BUS_DMA_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i32*, i32, i32)* @dmar_bus_dmamap_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dmar_bus_dmamap_complete(i64 %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bus_dma_tag_dmar*, align 8
  %12 = alloca %struct.bus_dmamap_dmar*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %14, %struct.bus_dma_tag_dmar** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %16, %struct.bus_dmamap_dmar** %12, align 8
  %17 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %12, align 8
  %18 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %5
  %22 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %12, align 8
  %23 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %12, align 8
  %26 = bitcast %struct.bus_dmamap_dmar* %25 to i8*
  %27 = call i32 @KASSERT(i32 %24, i8* %26)
  %28 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %11, align 8
  %29 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %11, align 8
  %33 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUS_DMA_LOCK, align 4
  %37 = call i32 %31(i32 %35, i32 %36)
  %38 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %12, align 8
  %39 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %21, %5
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %11, align 8
  %45 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %8, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32*, i32** %8, align 8
  ret i32* %48
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
