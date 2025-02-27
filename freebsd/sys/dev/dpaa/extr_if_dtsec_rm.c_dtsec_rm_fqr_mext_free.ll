; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_mext_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_mext_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dtsec_softc*, i8* }
%struct.dtsec_softc = type { i32 }

@DTSEC_RM_POOL_RX_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @dtsec_rm_fqr_mext_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtsec_rm_fqr_mext_free(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i8*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %11, align 8
  store %struct.dtsec_softc* %12, %struct.dtsec_softc** %3, align 8
  %13 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %14 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @bman_count(i32 %15)
  %17 = load i64, i64* @DTSEC_RM_POOL_RX_MAX_SIZE, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @bman_put_buffer(i32 %22, i8* %23)
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @dtsec_rm_pool_rx_put_buffer(%struct.dtsec_softc* %26, i8* %27, i32* null)
  br label %29

29:                                               ; preds = %25, %19
  ret void
}

declare dso_local i64 @bman_count(i32) #1

declare dso_local i32 @bman_put_buffer(i32, i8*) #1

declare dso_local i32 @dtsec_rm_pool_rx_put_buffer(%struct.dtsec_softc*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
