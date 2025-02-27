; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_reqres_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_reqres_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to lock HW IRQ %u for IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiochip_reqres_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @try_module_get(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @gpiochip_lock_as_irq(%struct.gpio_chip* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @chip_err(%struct.gpio_chip* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @module_put(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %23, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @chip_err(%struct.gpio_chip*, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
