; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard.c_altera_sdcard_task_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard.c_altera_sdcard_task_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_sdcard_softc = type { i32, i32 }

@ALTERA_SDCARD_FLAG_DETACHREQ = common dso_local global i32 0, align 4
@ALTERA_SDCARD_STATE_DETACHED = common dso_local global i32 0, align 4
@ALTERA_SDCARD_ASR_CARDPRESENT = common dso_local global i32 0, align 4
@ALTERA_SDCARD_STATE_NOCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_sdcard_softc*)* @altera_sdcard_task_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_sdcard_task_idle(%struct.altera_sdcard_softc* %0) #0 {
  %2 = alloca %struct.altera_sdcard_softc*, align 8
  store %struct.altera_sdcard_softc* %0, %struct.altera_sdcard_softc** %2, align 8
  %3 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %4 = call i32 @ALTERA_SDCARD_LOCK_ASSERT(%struct.altera_sdcard_softc* %3)
  %5 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %6 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ALTERA_SDCARD_FLAG_DETACHREQ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ALTERA_SDCARD_STATE_DETACHED, align 4
  %13 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %14 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %17 = call i32 @altera_sdcard_read_asr(%struct.altera_sdcard_softc* %16)
  %18 = load i32, i32* @ALTERA_SDCARD_ASR_CARDPRESENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %23 = call i32 @altera_sdcard_disk_remove(%struct.altera_sdcard_softc* %22)
  %24 = load i32, i32* @ALTERA_SDCARD_STATE_NOCARD, align 4
  %25 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %26 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %11, %21, %15
  ret void
}

declare dso_local i32 @ALTERA_SDCARD_LOCK_ASSERT(%struct.altera_sdcard_softc*) #1

declare dso_local i32 @altera_sdcard_read_asr(%struct.altera_sdcard_softc*) #1

declare dso_local i32 @altera_sdcard_disk_remove(%struct.altera_sdcard_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
