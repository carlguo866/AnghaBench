; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { i32*, i32* }

@mtk_gpio_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_gpio_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %5)
  store %struct.mtk_gpio_softc* %6, %struct.mtk_gpio_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OF_xref_from_node(i32 %10)
  %12 = call i32 @intr_pic_deregister(i32 %9, i32 %11)
  %13 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @bus_teardown_intr(i32 %18, i32 %23, i32* %26)
  br label %28

28:                                               ; preds = %17, %1
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @mtk_gpio_spec, align 4
  %31 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_release_resources(i32 %29, i32 %30, i32* %33)
  %35 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %36 = call i32 @MTK_GPIO_LOCK_DESTROY(%struct.mtk_gpio_softc* %35)
  ret i32 0
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @intr_pic_deregister(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @MTK_GPIO_LOCK_DESTROY(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
