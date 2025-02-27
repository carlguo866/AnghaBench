; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @vf_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_gpio_pin_set(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vf_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.vf_gpio_softc* @device_get_softc(i32 %10)
  store %struct.vf_gpio_softc* %11, %struct.vf_gpio_softc** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %15 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %12

34:                                               ; preds = %29, %12
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %37 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %34
  %43 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %44 = call i32 @GPIO_LOCK(%struct.vf_gpio_softc* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @GPIO_PSOR(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = srem i32 %51, 32
  %53 = shl i32 1, %52
  %54 = call i32 @WRITE4(%struct.vf_gpio_softc* %48, i32 %50, i32 %53)
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @GPIO_PCOR(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = srem i32 %59, 32
  %61 = shl i32 1, %60
  %62 = call i32 @WRITE4(%struct.vf_gpio_softc* %56, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %8, align 8
  %65 = call i32 @GPIO_UNLOCK(%struct.vf_gpio_softc* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %40
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.vf_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.vf_gpio_softc*) #1

declare dso_local i32 @WRITE4(%struct.vf_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PSOR(i32) #1

declare dso_local i32 @GPIO_PCOR(i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.vf_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
