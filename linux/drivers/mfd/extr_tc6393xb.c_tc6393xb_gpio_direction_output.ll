; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tc6393xb = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @tc6393xb_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc6393xb_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc6393xb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.tc6393xb* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.tc6393xb* %11, %struct.tc6393xb** %7, align 8
  %12 = load %struct.tc6393xb*, %struct.tc6393xb** %7, align 8
  %13 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__tc6393xb_gpio_set(%struct.gpio_chip* %16, i32 %17, i32 %18)
  %20 = load %struct.tc6393xb*, %struct.tc6393xb** %7, align 8
  %21 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = udiv i32 %23, 8
  %25 = call i64 @SCR_GPO_DOECR(i32 %24)
  %26 = add nsw i64 %22, %25
  %27 = call i32 @tmio_ioread8(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TC_GPIO_BIT(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.tc6393xb*, %struct.tc6393xb** %7, align 8
  %34 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = udiv i32 %36, 8
  %38 = call i64 @SCR_GPO_DOECR(i32 %37)
  %39 = add nsw i64 %35, %38
  %40 = call i32 @tmio_iowrite8(i32 %32, i64 %39)
  %41 = load %struct.tc6393xb*, %struct.tc6393xb** %7, align 8
  %42 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @raw_spin_unlock_irqrestore(i32* %42, i64 %43)
  ret i32 0
}

declare dso_local %struct.tc6393xb* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__tc6393xb_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i64 @SCR_GPO_DOECR(i32) #1

declare dso_local i32 @TC_GPIO_BIT(i32) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
