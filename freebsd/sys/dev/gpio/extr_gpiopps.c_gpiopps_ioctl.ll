; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiopps.c_gpiopps_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiopps.c_gpiopps_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pps_softc* }
%struct.pps_softc = type { i32, i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* @gpiopps_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiopps_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.pps_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.pps_softc*, %struct.pps_softc** %14, align 8
  store %struct.pps_softc* %15, %struct.pps_softc** %11, align 8
  %16 = load %struct.pps_softc*, %struct.pps_softc** %11, align 8
  %17 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.pps_softc*, %struct.pps_softc** %11, align 8
  %22 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %21, i32 0, i32 1
  %23 = call i32 @pps_ioctl(i32 %19, i32 %20, i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.pps_softc*, %struct.pps_softc** %11, align 8
  %25 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load i32, i32* %12, align 4
  ret i32 %27
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pps_ioctl(i32, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
