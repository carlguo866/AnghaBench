; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_ccb_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_ccb_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, i32, i32, i32 }

@AMR_MAXCMD = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't allocate ccb tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"can't allocate ccb memory\0A\00", align 1
@amr_sglist_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*)* @amr_ccb_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_ccb_map(%struct.amr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  %6 = load i32, i32* @AMR_MAXCMD, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %11 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %18 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %17, i32 0, i32 3
  %19 = call i32 @bus_dma_tag_create(i32 %12, i32 128, i32 0, i32 %13, i32 %14, i32* null, i32* null, i32 %15, i32 1, i32 %16, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %24 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %1
  %29 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %30 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %33 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8**
  %35 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %36 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %37 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %36, i32 0, i32 2
  %38 = call i32 @bus_dmamem_alloc(i32 %31, i8** %34, i32 %35, i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %43 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %28
  %48 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %52 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %55 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @amr_sglist_helper, align 4
  %59 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %60 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %59, i32 0, i32 1
  %61 = call i32 @bus_dmamap_load(i32 %50, i32 %53, i32 %56, i32 %57, i32 %58, i32* %60, i32 0)
  %62 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %63 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @bzero(i32 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %47, %41, %22
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
