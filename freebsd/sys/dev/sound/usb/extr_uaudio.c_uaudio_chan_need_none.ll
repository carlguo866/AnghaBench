; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_need_none.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_need_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uaudio_softc*)* @uaudio_chan_need_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_chan_need_none(%struct.uaudio_softc* %0) #0 {
  %2 = alloca %struct.uaudio_softc*, align 8
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %2, align 8
  %3 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %4 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br label %26

26:                                               ; preds = %20, %14, %8, %1
  %27 = phi i1 [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
