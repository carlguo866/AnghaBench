; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_gpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pinctrl_gpio_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca %struct.pinctrl_gpio_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pinctrl_get_device_gpio_range(i32 %7, %struct.pinctrl_dev** %3, %struct.pinctrl_gpio_range** %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @gpio_to_pin(%struct.pinctrl_gpio_range* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %4, align 8
  %22 = call i32 @pinmux_free_gpio(%struct.pinctrl_dev* %19, i32 %20, %struct.pinctrl_gpio_range* %21)
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %26

26:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @pinctrl_get_device_gpio_range(i32, %struct.pinctrl_dev**, %struct.pinctrl_gpio_range**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_to_pin(%struct.pinctrl_gpio_range*, i32) #1

declare dso_local i32 @pinmux_free_gpio(%struct.pinctrl_dev*, i32, %struct.pinctrl_gpio_range*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
