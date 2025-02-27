; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_save_stats_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_save_stats_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32, %struct.iwn_calib_state }
%struct.iwn_calib_state = type { i8*, i8*, i8*, i8*, i8* }
%struct.iwn_stats = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_softc*, %struct.iwn_stats*)* @iwn_save_stats_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_save_stats_counters(%struct.iwn_softc* %0, %struct.iwn_stats* %1) #0 {
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca %struct.iwn_stats*, align 8
  %5 = alloca %struct.iwn_calib_state*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %3, align 8
  store %struct.iwn_stats* %1, %struct.iwn_stats** %4, align 8
  %6 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %6, i32 0, i32 1
  store %struct.iwn_calib_state* %7, %struct.iwn_calib_state** %5, align 8
  %8 = load %struct.iwn_stats*, %struct.iwn_stats** %4, align 8
  %9 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le32toh(i32 %12)
  %14 = load %struct.iwn_calib_state*, %struct.iwn_calib_state** %5, align 8
  %15 = getelementptr inbounds %struct.iwn_calib_state, %struct.iwn_calib_state* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.iwn_stats*, %struct.iwn_stats** %4, align 8
  %17 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le32toh(i32 %20)
  %22 = load %struct.iwn_calib_state*, %struct.iwn_calib_state** %5, align 8
  %23 = getelementptr inbounds %struct.iwn_calib_state, %struct.iwn_calib_state* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.iwn_stats*, %struct.iwn_stats** %4, align 8
  %25 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32toh(i32 %28)
  %30 = load %struct.iwn_calib_state*, %struct.iwn_calib_state** %5, align 8
  %31 = getelementptr inbounds %struct.iwn_calib_state, %struct.iwn_calib_state* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.iwn_stats*, %struct.iwn_stats** %4, align 8
  %33 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32toh(i32 %36)
  %38 = load %struct.iwn_calib_state*, %struct.iwn_calib_state** %5, align 8
  %39 = getelementptr inbounds %struct.iwn_calib_state, %struct.iwn_calib_state* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.iwn_stats*, %struct.iwn_stats** %4, align 8
  %41 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32toh(i32 %44)
  %46 = load %struct.iwn_calib_state*, %struct.iwn_calib_state** %5, align 8
  %47 = getelementptr inbounds %struct.iwn_calib_state, %struct.iwn_calib_state* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @ticks, align 4
  %49 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %50 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local i8* @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
