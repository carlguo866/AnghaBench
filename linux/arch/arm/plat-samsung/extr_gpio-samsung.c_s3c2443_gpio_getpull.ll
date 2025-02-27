; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_gpio-samsung.c_s3c2443_gpio_getpull.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_gpio-samsung.c_s3c2443_gpio_getpull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_gpio_chip = type { i32 }

@S3C_GPIO_PULL_UP = common dso_local global i32 0, align 4
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C_GPIO_PULL_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c2443_gpio_getpull(%struct.samsung_gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.samsung_gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.samsung_gpio_chip* %0, %struct.samsung_gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.samsung_gpio_chip*, %struct.samsung_gpio_chip** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @samsung_gpio_getpull_updown(%struct.samsung_gpio_chip* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 0, label %10
    i32 1, label %12
    i32 3, label %12
    i32 2, label %14
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @S3C_GPIO_PULL_UP, align 4
  store i32 %11, i32* %5, align 4
  br label %16

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  store i32 %13, i32* %5, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @S3C_GPIO_PULL_DOWN, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %2, %14, %12, %10
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @samsung_gpio_getpull_updown(%struct.samsung_gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
