; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*)* @nge_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_watchdog(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %4 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %5 = call i32 @NGE_LOCK_ASSERT(%struct.nge_softc* %4)
  %6 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %41

17:                                               ; preds = %10
  %18 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %18, i32 0, i32 1
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %23 = call i32 @if_inc_counter(%struct.ifnet* %21, i32 %22, i32 1)
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = call i32 @if_printf(%struct.ifnet* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %33 = call i32 @nge_init_locked(%struct.nge_softc* %32)
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = call i32 @IFQ_DRV_IS_EMPTY(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = call i32 @nge_start_locked(%struct.ifnet* %39)
  br label %41

41:                                               ; preds = %16, %38, %17
  ret void
}

declare dso_local i32 @NGE_LOCK_ASSERT(%struct.nge_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @nge_init_locked(%struct.nge_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @nge_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
