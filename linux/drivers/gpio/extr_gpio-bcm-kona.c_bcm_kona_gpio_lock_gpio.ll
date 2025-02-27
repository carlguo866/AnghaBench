; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bcm-kona.c_bcm_kona_gpio_lock_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bcm-kona.c_bcm_kona_gpio_lock_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_gpio = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_kona_gpio*, i32)* @bcm_kona_gpio_lock_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_kona_gpio_lock_gpio(%struct.bcm_kona_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_kona_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bcm_kona_gpio* %0, %struct.bcm_kona_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GPIO_BANK(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %3, align 8
  %15 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @GPIO_PWD_STATUS(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bcm_kona_gpio_write_lock_regs(i64 %27, i32 %28, i32 %29)
  %31 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @GPIO_BANK(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @GPIO_PWD_STATUS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bcm_kona_gpio_write_lock_regs(i64, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
