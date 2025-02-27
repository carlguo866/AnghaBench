; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_pool_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_pool_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32*, i32, i32*, i32 }

@FM_PORT_BUFFER_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s: RX Buffers\00", align 1
@EIO = common dso_local global i32 0, align 4
@DTSEC_RM_POOL_RX_MAX_SIZE = common dso_local global i32 0, align 4
@dtsec_rm_pool_rx_get_buffer = common dso_local global i32 0, align 4
@dtsec_rm_pool_rx_put_buffer = common dso_local global i32 0, align 4
@DTSEC_RM_POOL_RX_LOW_MARK = common dso_local global i32 0, align 4
@DTSEC_RM_POOL_RX_HIGH_MARK = common dso_local global i32 0, align 4
@dtsec_rm_pool_rx_depleted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"NULL rx pool  somehow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_rm_pool_rx_init(%struct.dtsec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  %4 = load i64, i64* @FM_PORT_BUFFER_SIZE, align 8
  %5 = load i64, i64* @PAGE_SIZE, align 8
  %6 = icmp slt i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @CTASSERT(i32 %7)
  %9 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %10 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @device_get_nameunit(i32 %14)
  %16 = call i32 @snprintf(i32 %11, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %18 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* @FM_PORT_BUFFER_SIZE, align 8
  %21 = load i64, i64* @FM_PORT_BUFFER_SIZE, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32* @uma_zcreate(i32 %19, i64 %20, i32* null, i32* null, i32* null, i32* null, i64 %22, i32 0)
  %24 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %25 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %34 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %33, i32 0, i32 2
  %35 = load i64, i64* @FM_PORT_BUFFER_SIZE, align 8
  %36 = load i32, i32* @DTSEC_RM_POOL_RX_MAX_SIZE, align 4
  %37 = load i32, i32* @dtsec_rm_pool_rx_get_buffer, align 4
  %38 = load i32, i32* @dtsec_rm_pool_rx_put_buffer, align 4
  %39 = load i32, i32* @DTSEC_RM_POOL_RX_LOW_MARK, align 4
  %40 = load i32, i32* @DTSEC_RM_POOL_RX_HIGH_MARK, align 4
  %41 = load i32, i32* @dtsec_rm_pool_rx_depleted, align 4
  %42 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %43 = call i32* @bman_pool_create(i32* %34, i64 %35, i32 0, i32 0, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 0, i32 0, i32 %41, %struct.dtsec_softc* %42, i32* null, i32* null)
  %44 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %45 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %47 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %32
  %51 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %52 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %56 = call i32 @dtsec_rm_pool_rx_free(%struct.dtsec_softc* %55)
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %50, %30
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32* @uma_zcreate(i32, i64, i32*, i32*, i32*, i32*, i64, i32) #1

declare dso_local i32* @bman_pool_create(i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dtsec_softc*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @dtsec_rm_pool_rx_free(%struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
