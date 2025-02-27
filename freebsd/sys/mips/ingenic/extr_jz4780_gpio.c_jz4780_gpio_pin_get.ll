; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { i32 }

@JZ4780_GPIO_PINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JZ_GPIO_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @jz4780_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.jz4780_gpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @JZ4780_GPIO_PINS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %19)
  store %struct.jz4780_gpio_softc* %20, %struct.jz4780_gpio_softc** %8, align 8
  %21 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %22 = call i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc* %21)
  %23 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %24 = load i32, i32* @JZ_GPIO_PIN, align 4
  %25 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %8, align 8
  %27 = call i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %16, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @JZ4780_GPIO_LOCK(%struct.jz4780_gpio_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.jz4780_gpio_softc*, i32) #1

declare dso_local i32 @JZ4780_GPIO_UNLOCK(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
