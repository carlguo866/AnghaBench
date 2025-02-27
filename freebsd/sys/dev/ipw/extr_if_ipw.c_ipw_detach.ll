; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i32*, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipw_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ipw_softc* @device_get_softc(i32 %5)
  store %struct.ipw_softc* %6, %struct.ipw_softc** %3, align 8
  %7 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %7, i32 0, i32 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bus_teardown_intr(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %18 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %18, i32 0, i32 6
  %20 = call i32 @ieee80211_draintask(%struct.ieee80211com* %17, i32* %19)
  %21 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %22 = call i32 @ipw_stop(%struct.ipw_softc* %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %24 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %23)
  %25 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %25, i32 0, i32 5
  %27 = call i32 @callout_drain(i32* %26)
  %28 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %28, i32 0, i32 4
  %30 = call i32 @mbufq_drain(i32* %29)
  %31 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %32 = call i32 @ipw_release(%struct.ipw_softc* %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SYS_RES_IRQ, align 4
  %35 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rman_get_rid(i32 %37)
  %39 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_release_resource(i32 %33, i32 %34, i32 %38, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @rman_get_rid(i32 %47)
  %49 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %48, i32 %51)
  %53 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %1
  %58 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %62 = call i32 @firmware_put(i32* %60, i32 %61)
  %63 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %57, %1
  %66 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %66, i32 0, i32 0
  %68 = call i32 @mtx_destroy(i32* %67)
  ret i32 0
}

declare dso_local %struct.ipw_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ipw_stop(%struct.ipw_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @ipw_release(%struct.ipw_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @firmware_put(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
