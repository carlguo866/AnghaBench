; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_get_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_get_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }

@AC97_GPIO_STATUS = common dso_local global i32 0, align 4
@WM97XX_GPIO_HIGH = common dso_local global i32 0, align 4
@WM97XX_GPIO_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm97xx_get_gpio(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %8 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %11 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %12 = call i32 @wm97xx_reg_read(%struct.wm97xx* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @WM97XX_GPIO_HIGH, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @WM97XX_GPIO_LOW, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %23 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
