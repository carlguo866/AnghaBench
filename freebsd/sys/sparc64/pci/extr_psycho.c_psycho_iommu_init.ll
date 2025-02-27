; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_iommu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_iommu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_softc = type { i32, i32, %struct.iommu_state* }
%struct.iommu_state = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PSR_IOMMU = common dso_local global i32 0, align 4
@PSR_IOMMU_TLB_TAG_DIAG = common dso_local global i32 0, align 4
@PSR_IOMMU_TLB_DATA_DIAG = common dso_local global i32 0, align 4
@PSR_IOMMU_QUEUE_DIAG = common dso_local global i32 0, align 4
@PSR_IOMMU_SVADIAG = common dso_local global i32 0, align 4
@PSR_IOMMU_TLB_CMP_DIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psycho_softc*, i32, i32)* @psycho_iommu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psycho_iommu_init(%struct.psycho_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.psycho_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_state*, align 8
  store %struct.psycho_softc* %0, %struct.psycho_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.psycho_softc*, %struct.psycho_softc** %4, align 8
  %9 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %8, i32 0, i32 2
  %10 = load %struct.iommu_state*, %struct.iommu_state** %9, align 8
  store %struct.iommu_state* %10, %struct.iommu_state** %7, align 8
  %11 = load %struct.psycho_softc*, %struct.psycho_softc** %4, align 8
  %12 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rman_get_bustag(i32 %13)
  %15 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %16 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.psycho_softc*, %struct.psycho_softc** %4, align 8
  %18 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rman_get_bushandle(i32 %19)
  %21 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %22 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PSR_IOMMU, align 4
  %24 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %25 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @PSR_IOMMU_TLB_TAG_DIAG, align 4
  %27 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %28 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @PSR_IOMMU_TLB_DATA_DIAG, align 4
  %30 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %31 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @PSR_IOMMU_QUEUE_DIAG, align 4
  %33 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %34 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @PSR_IOMMU_SVADIAG, align 4
  %36 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %37 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @PSR_IOMMU_TLB_CMP_DIAG, align 4
  %39 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %40 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.psycho_softc*, %struct.psycho_softc** %4, align 8
  %42 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_get_nameunit(i32 %43)
  %45 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @iommu_init(i32 %44, %struct.iommu_state* %45, i32 %46, i32 %47, i32 0)
  ret void
}

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @iommu_init(i32, %struct.iommu_state*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
