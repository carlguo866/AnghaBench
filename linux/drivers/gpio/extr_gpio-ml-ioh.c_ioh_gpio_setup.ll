; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ml-ioh.c_ioh_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioh_gpio = type { i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@ioh_gpio_direction_input = common dso_local global i32 0, align 4
@ioh_gpio_get = common dso_local global i32 0, align 4
@ioh_gpio_direction_output = common dso_local global i32 0, align 4
@ioh_gpio_set = common dso_local global i32 0, align 4
@ioh_gpio_to_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioh_gpio*, i32)* @ioh_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioh_gpio_setup(%struct.ioh_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.ioh_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.ioh_gpio* %0, %struct.ioh_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ioh_gpio*, %struct.ioh_gpio** %3, align 8
  %7 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %6, i32 0, i32 1
  store %struct.gpio_chip* %7, %struct.gpio_chip** %5, align 8
  %8 = load %struct.ioh_gpio*, %struct.ioh_gpio** %3, align 8
  %9 = getelementptr inbounds %struct.ioh_gpio, %struct.ioh_gpio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dev_name(i32 %10)
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @ioh_gpio_direction_input, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ioh_gpio_get, align 4
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @ioh_gpio_direction_output, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ioh_gpio_set, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @ioh_gpio_to_irq, align 4
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %40 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
