; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_timer_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_timer_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, i32, i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_softc*)* @timer_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_continue(%struct.seq_softc* %0) #0 {
  %2 = alloca %struct.seq_softc*, align 8
  %3 = alloca %struct.timeval, align 4
  store %struct.seq_softc* %0, %struct.seq_softc** %2, align 8
  %4 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %5 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %11 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = call i32 @getmicrotime(%struct.timeval* %3)
  %13 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %14 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %13, i32 0, i32 2
  %15 = call i32 @timevalsub(%struct.timeval* %3, i32* %14)
  %16 = load %struct.seq_softc*, %struct.seq_softc** %2, align 8
  %17 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %16, i32 0, i32 1
  %18 = call i32 @timevaladd(i32* %17, %struct.timeval* %3)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, i32*) #1

declare dso_local i32 @timevaladd(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
