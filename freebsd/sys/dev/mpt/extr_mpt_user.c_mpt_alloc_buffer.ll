; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mpt_page_memory = type { i32, i32*, i32, i32 }
%struct.mpt_map_info = type { i32, i32, %struct.mpt_softc* }

@ENOSPC = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@mpt_map_rquest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mpt_page_memory*, i64)* @mpt_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_alloc_buffer(%struct.mpt_softc* %0, %struct.mpt_page_memory* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mpt_page_memory*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mpt_map_info, align 8
  %9 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mpt_page_memory* %1, %struct.mpt_page_memory** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %11 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 16777216
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOSPC, align 4
  store i32 %15, i32* %4, align 4
  br label %99

16:                                               ; preds = %3
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %19 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %22 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %26 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %25, i32 0, i32 2
  %27 = call i32 @mpt_dma_tag_create(%struct.mpt_softc* %17, i32 %20, i32 1, i32 0, i32 %21, i32 %22, i32* null, i32* null, i64 %23, i32 1, i64 %24, i32 0, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %99

32:                                               ; preds = %16
  %33 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %34 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %37 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %36, i32 0, i32 1
  %38 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %39 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %42 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %41, i32 0, i32 3
  %43 = call i32 @bus_dmamem_alloc(i32 %35, i32** %37, i32 %40, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %48 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bus_dma_tag_destroy(i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %99

52:                                               ; preds = %32
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %54 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %8, i32 0, i32 2
  store %struct.mpt_softc* %53, %struct.mpt_softc** %54, align 8
  %55 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %56 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %59 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %62 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @mpt_map_rquest, align 4
  %66 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %67 = call i32 @bus_dmamap_load(i32 %57, i32 %60, i32* %63, i64 %64, i32 %65, %struct.mpt_map_info* %8, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %52
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %78 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %81 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %84 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bus_dmamem_free(i32 %79, i32* %82, i32 %85)
  %87 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %88 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bus_dma_tag_destroy(i32 %89)
  %91 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %92 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %99

94:                                               ; preds = %73
  %95 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %8, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %6, align 8
  %98 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %76, %46, %30, %14
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @mpt_dma_tag_create(%struct.mpt_softc*, i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i64, i32, %struct.mpt_map_info*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
