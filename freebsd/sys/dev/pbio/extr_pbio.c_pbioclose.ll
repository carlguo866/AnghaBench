; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.pbio_softc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @pbioclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbioclose(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.pbio_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = call i32 @UNIT(%struct.cdev* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call %struct.pbio_softc* @pbio_addr(i32 %14)
  store %struct.pbio_softc* %15, %struct.pbio_softc** %10, align 8
  %16 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %17 = icmp eq %struct.pbio_softc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  store i32 %19, i32* %5, align 4
  br label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @UNIT(%struct.cdev*) #1

declare dso_local %struct.pbio_softc* @pbio_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
