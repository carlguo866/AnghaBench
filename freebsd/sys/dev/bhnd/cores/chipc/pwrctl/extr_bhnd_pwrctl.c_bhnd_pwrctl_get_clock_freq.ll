; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl.c_bhnd_pwrctl_get_clock_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl.c_bhnd_pwrctl_get_clock_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @bhnd_pwrctl_get_clock_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pwrctl_get_clock_freq(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bhnd_pwrctl_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bhnd_pwrctl_softc* @device_get_softc(i32 %9)
  store %struct.bhnd_pwrctl_softc* %10, %struct.bhnd_pwrctl_softc** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %21 [
    i32 131, label %12
    i32 129, label %20
    i32 128, label %20
    i32 130, label %20
  ]

12:                                               ; preds = %3
  %13 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %14 = call i32 @BPMU_LOCK(%struct.bhnd_pwrctl_softc* %13)
  %15 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %16 = call i32 @bhnd_pwrctl_getclk_speed(%struct.bhnd_pwrctl_softc* %15)
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %8, align 8
  %19 = call i32 @BPMU_UNLOCK(%struct.bhnd_pwrctl_softc* %18)
  store i32 0, i32* %4, align 4
  br label %23

20:                                               ; preds = %3, %3, %3
  br label %21

21:                                               ; preds = %3, %20
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.bhnd_pwrctl_softc* @device_get_softc(i32) #1

declare dso_local i32 @BPMU_LOCK(%struct.bhnd_pwrctl_softc*) #1

declare dso_local i32 @bhnd_pwrctl_getclk_speed(%struct.bhnd_pwrctl_softc*) #1

declare dso_local i32 @BPMU_UNLOCK(%struct.bhnd_pwrctl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
