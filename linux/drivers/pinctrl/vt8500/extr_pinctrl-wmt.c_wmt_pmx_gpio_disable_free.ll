; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pmx_gpio_disable_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pmx_gpio_disable_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.wmt_pinctrl_data = type { i32 }

@WMT_FSEL_GPIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @wmt_pmx_gpio_disable_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_pmx_gpio_disable_free(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmt_pinctrl_data*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %9 = call %struct.wmt_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %8)
  store %struct.wmt_pinctrl_data* %9, %struct.wmt_pinctrl_data** %7, align 8
  %10 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %11 = load i32, i32* @WMT_FSEL_GPIO_IN, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @wmt_set_pinmux(%struct.wmt_pinctrl_data* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local %struct.wmt_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @wmt_set_pinmux(%struct.wmt_pinctrl_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
