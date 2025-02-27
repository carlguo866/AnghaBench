; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ltq_pinmux_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @xway_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xway_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ltq_pinmux_info*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ltq_pinmux_info* @dev_get_drvdata(i32 %10)
  store %struct.ltq_pinmux_info* %11, %struct.ltq_pinmux_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %16 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @GPIO_OUT(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @PORT_PIN(i32 %22)
  %24 = call i32 @gpio_setbit(i32 %19, i32 %21, i32 %23)
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %27 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @GPIO_OUT(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PORT_PIN(i32 %33)
  %35 = call i32 @gpio_clearbit(i32 %30, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %25, %14
  ret void
}

declare dso_local %struct.ltq_pinmux_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @gpio_setbit(i32, i32, i32) #1

declare dso_local i32 @GPIO_OUT(i32) #1

declare dso_local i32 @PORT_PIN(i32) #1

declare dso_local i32 @gpio_clearbit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
