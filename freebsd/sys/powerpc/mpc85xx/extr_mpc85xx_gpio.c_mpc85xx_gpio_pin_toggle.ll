; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_gpio.c_mpc85xx_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_gpio.c_mpc85xx_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc85xx_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mpc85xx_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpc85xx_gpio_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.mpc85xx_gpio_softc* @device_get_softc(i32 %8)
  store %struct.mpc85xx_gpio_softc* %9, %struct.mpc85xx_gpio_softc** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @VALID_PIN(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %6, align 8
  %17 = call i32 @GPIO_LOCK(%struct.mpc85xx_gpio_softc* %16)
  %18 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %6, align 8
  %19 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bus_read_4(i32 %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 31, %22
  %24 = shl i32 1, %23
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %6, align 8
  %28 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @bus_write_4(i32 %29, i32 0, i32 %30)
  %32 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %6, align 8
  %33 = call i32 @GPIO_UNLOCK(%struct.mpc85xx_gpio_softc* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %15, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.mpc85xx_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.mpc85xx_gpio_softc*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.mpc85xx_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
