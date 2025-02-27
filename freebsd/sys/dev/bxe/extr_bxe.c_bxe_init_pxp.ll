; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_pxp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_pxp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@PCIR_EXPRESS_DEVICE_CTL = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read 0x%08x from devctl\0A\00", align 1
@PCIM_EXP_CTL_MAX_PAYLOAD = common dso_local global i32 0, align 4
@PCIM_EXP_CTL_MAX_READ_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"forcing read order to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_init_pxp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_pxp(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = load i32, i32* @PCIR_EXPRESS_DEVICE_CTL, align 4
  %8 = call i32 @bxe_pcie_capability_read(%struct.bxe_softc* %6, i32 %7, i32 2)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = load i32, i32* @DBG_LOAD, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BLOGD(%struct.bxe_softc* %9, i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PCIM_EXP_CTL_MAX_PAYLOAD, align 4
  %15 = and i32 %13, %14
  %16 = ashr i32 %15, 5
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PCIM_EXP_CTL_MAX_READ_REQUEST, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 12
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %28 = load i32, i32* @DBG_LOAD, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BLOGD(%struct.bxe_softc* %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ecore_init_pxp_arb(%struct.bxe_softc* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @bxe_pcie_capability_read(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @ecore_init_pxp_arb(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
