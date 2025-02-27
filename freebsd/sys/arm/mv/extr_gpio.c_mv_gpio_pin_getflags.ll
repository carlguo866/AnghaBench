; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @mv_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.mv_gpio_softc* @device_get_softc(i32 %9)
  store %struct.mv_gpio_softc* %10, %struct.mv_gpio_softc** %8, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %18 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %15
  %24 = call i32 (...) @MV_GPIO_LOCK()
  %25 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %26 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  %33 = call i32 (...) @MV_GPIO_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %21, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.mv_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MV_GPIO_LOCK(...) #1

declare dso_local i32 @MV_GPIO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
