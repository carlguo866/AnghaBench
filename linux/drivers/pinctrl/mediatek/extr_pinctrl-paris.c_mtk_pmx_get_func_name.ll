; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pmx_get_func_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pmx_get_func_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }

@mtk_gpio_functions = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pinctrl_dev*, i32)* @mtk_pmx_get_func_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mtk_pmx_get_func_name(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8**, i8*** @mtk_gpio_functions, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8*, i8** %5, i64 %7
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
