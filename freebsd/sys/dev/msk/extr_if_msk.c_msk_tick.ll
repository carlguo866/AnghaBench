; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, i32, i32, i32 }
%struct.mii_data = type { i32 }

@MSK_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @msk_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.msk_if_softc*
  store %struct.msk_if_softc* %6, %struct.msk_if_softc** %3, align 8
  %7 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %8 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %7)
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %10 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mii_data* @device_get_softc(i32 %11)
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = call i32 @mii_tick(%struct.mii_data* %13)
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MSK_FLAG_LINK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %23 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @msk_miibus_statchg(i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %28 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @msk_handle_events(i32 %29)
  %31 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %32 = call i32 @msk_watchdog(%struct.msk_if_softc* %31)
  %33 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %34 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %33, i32 0, i32 1
  %35 = load i32, i32* @hz, align 4
  %36 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %37 = call i32 @callout_reset(i32* %34, i32 %35, void (i8*)* @msk_tick, %struct.msk_if_softc* %36)
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @msk_miibus_statchg(i32) #1

declare dso_local i32 @msk_handle_events(i32) #1

declare dso_local i32 @msk_watchdog(%struct.msk_if_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.msk_if_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
