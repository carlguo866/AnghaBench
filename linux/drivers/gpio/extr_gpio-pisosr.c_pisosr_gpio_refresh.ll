; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pisosr.c_pisosr_gpio_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pisosr.c_pisosr_gpio_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pisosr_gpio = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pisosr_gpio*)* @pisosr_gpio_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pisosr_gpio_refresh(%struct.pisosr_gpio* %0) #0 {
  %2 = alloca %struct.pisosr_gpio*, align 8
  %3 = alloca i32, align 4
  store %struct.pisosr_gpio* %0, %struct.pisosr_gpio** %2, align 8
  %4 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %5 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %8 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %13 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gpiod_set_value_cansleep(i64 %14, i32 1)
  %16 = call i32 @udelay(i32 1)
  %17 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %18 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpiod_set_value_cansleep(i64 %19, i32 0)
  %21 = call i32 @udelay(i32 1)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %24 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %27 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %30 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spi_read(i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %2, align 8
  %34 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spi_read(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
