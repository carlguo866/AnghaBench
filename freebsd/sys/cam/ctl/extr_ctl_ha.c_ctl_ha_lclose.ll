; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_lclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_lclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SO_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ha_softc*)* @ctl_ha_lclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_ha_lclose(%struct.ha_softc* %0) #0 {
  %2 = alloca %struct.ha_softc*, align 8
  store %struct.ha_softc* %0, %struct.ha_softc** %2, align 8
  %3 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @SOCKBUF_LOCK(i32* %11)
  %13 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* @SO_RCV, align 4
  %17 = call i32 @soupcall_clear(%struct.TYPE_3__* %15, i32 %16)
  %18 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @SOCKBUF_UNLOCK(i32* %21)
  %23 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @soclose(%struct.TYPE_3__* %25)
  %27 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %27, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %28, align 8
  br label %29

29:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_clear(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @soclose(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
