; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nfe_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.nfe_softc* @device_get_softc(i32 %5)
  store %struct.nfe_softc* %6, %struct.nfe_softc** %3, align 8
  %7 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %8 = call i32 @NFE_LOCK(%struct.nfe_softc* %7)
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %10 = call i32 @nfe_power(%struct.nfe_softc* %9)
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @if_getflags(i32 %14)
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %21 = call i32 @nfe_init_locked(%struct.nfe_softc* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %24 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %26 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %25)
  ret i32 0
}

declare dso_local %struct.nfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @NFE_LOCK(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_power(%struct.nfe_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @nfe_init_locked(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_UNLOCK(%struct.nfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
