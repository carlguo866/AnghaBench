; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pic_post_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pic_post_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.mtk_gpio_softc = type { i32 }
%struct.mtk_gpio_pin_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @mtk_gpio_pic_post_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_gpio_pic_post_filter(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.mtk_gpio_softc*, align 8
  %6 = alloca %struct.mtk_gpio_pin_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %7 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %8 = bitcast %struct.intr_irqsrc* %7 to %struct.mtk_gpio_pin_irqsrc*
  store %struct.mtk_gpio_pin_irqsrc* %8, %struct.mtk_gpio_pin_irqsrc** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %9)
  store %struct.mtk_gpio_softc* %10, %struct.mtk_gpio_softc** %5, align 8
  %11 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %12 = call i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc* %11)
  %13 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %14 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %15 = call i32 @GPIO_PIOINT(%struct.mtk_gpio_softc* %14)
  %16 = load %struct.mtk_gpio_pin_irqsrc*, %struct.mtk_gpio_pin_irqsrc** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_gpio_pin_irqsrc, %struct.mtk_gpio_pin_irqsrc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %13, i32 %15, i32 %19)
  %21 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %22 = call i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc* %21)
  ret void
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PIOINT(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
