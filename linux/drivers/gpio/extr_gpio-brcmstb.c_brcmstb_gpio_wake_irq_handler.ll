; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_wake_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_wake_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_gpio_priv = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @brcmstb_gpio_wake_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_wake_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.brcmstb_gpio_priv*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.brcmstb_gpio_priv*
  store %struct.brcmstb_gpio_priv* %8, %struct.brcmstb_gpio_priv** %6, align 8
  %9 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %6, align 8
  %10 = icmp ne %struct.brcmstb_gpio_priv* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %6, align 8
  %14 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
