; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.amd_gpio = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Freed gpio %d, data %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32)* @amd_gpio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_gpio_free(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.amd_gpio* %7, %struct.amd_gpio** %5, align 8
  %8 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %9 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %14 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %19)
  %21 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.amd_gpio*, %struct.amd_gpio** %5, align 8
  %29 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @AMD_REG_GPIO(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @iowrite8(i32 %27, i64 %33)
  ret void
}

declare dso_local %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i64 @AMD_REG_GPIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
