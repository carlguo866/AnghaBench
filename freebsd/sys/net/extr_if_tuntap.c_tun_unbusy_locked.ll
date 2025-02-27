; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_unbusy_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_unbusy_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_softc = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"tun_unbusy: called for non-busy tunnel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tuntap_softc*)* @tun_unbusy_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_unbusy_locked(%struct.tuntap_softc* %0) #0 {
  %2 = alloca %struct.tuntap_softc*, align 8
  store %struct.tuntap_softc* %0, %struct.tuntap_softc** %2, align 8
  %3 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %4 = call i32 @TUN_LOCK_ASSERT(%struct.tuntap_softc* %3)
  %5 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %6 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %12 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %16 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.tuntap_softc*, %struct.tuntap_softc** %2, align 8
  %21 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %20, i32 0, i32 1
  %22 = call i32 @cv_broadcast(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @TUN_LOCK_ASSERT(%struct.tuntap_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
