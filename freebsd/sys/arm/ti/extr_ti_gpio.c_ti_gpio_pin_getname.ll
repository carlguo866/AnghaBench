; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pin_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pin_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gpio_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ti_gpio_pin_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pin_getname(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ti_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.ti_gpio_softc* @device_get_softc(i32 %9)
  store %struct.ti_gpio_softc* %10, %struct.ti_gpio_softc** %8, align 8
  %11 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ti_gpio_valid_pin(%struct.ti_gpio_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @GPIOMAXNAME, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @GPIOMAXNAME, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 0, i8* %26, align 1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %17, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_gpio_valid_pin(%struct.ti_gpio_softc*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
