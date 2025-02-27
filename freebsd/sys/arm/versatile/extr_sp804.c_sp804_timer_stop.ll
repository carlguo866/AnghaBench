; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_sp804.c_sp804_timer_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_sp804.c_sp804_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { %struct.sp804_timer_softc* }
%struct.sp804_timer_softc = type { i64 }

@SP804_TIMER2_CONTROL = common dso_local global i32 0, align 4
@TIMER_CONTROL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*)* @sp804_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp804_timer_stop(%struct.eventtimer* %0) #0 {
  %2 = alloca %struct.eventtimer*, align 8
  %3 = alloca %struct.sp804_timer_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %2, align 8
  %5 = load %struct.eventtimer*, %struct.eventtimer** %2, align 8
  %6 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %5, i32 0, i32 0
  %7 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %6, align 8
  store %struct.sp804_timer_softc* %7, %struct.sp804_timer_softc** %3, align 8
  %8 = load %struct.sp804_timer_softc*, %struct.sp804_timer_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sp804_timer_softc, %struct.sp804_timer_softc* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @SP804_TIMER2_CONTROL, align 4
  %11 = call i32 @sp804_timer_tc_read_4(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @TIMER_CONTROL_EN, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @SP804_TIMER2_CONTROL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sp804_timer_tc_write_4(i32 %16, i32 %17)
  ret i32 0
}

declare dso_local i32 @sp804_timer_tc_read_4(i32) #1

declare dso_local i32 @sp804_timer_tc_write_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
