; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { i32 }

@jz4780_gpio_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_gpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %4)
  store %struct.jz4780_gpio_softc* %5, %struct.jz4780_gpio_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @jz4780_gpio_spec, align 4
  %8 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %9 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bus_release_resources(i32 %6, i32 %7, i32 %10)
  %12 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %13 = call i32 @JZ4780_GPIO_LOCK_DESTROY(%struct.jz4780_gpio_softc* %12)
  ret i32 0
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @JZ4780_GPIO_LOCK_DESTROY(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
