; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_gpio.c_mcf_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_gpio.c_mcf_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mcf_gpio_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcf_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcf_gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.mcf_gpio_chip* @MCF_CHIP(%struct.gpio_chip* %6)
  store %struct.mcf_gpio_chip* %7, %struct.mcf_gpio_chip** %5, align 8
  %8 = load %struct.mcf_gpio_chip*, %struct.mcf_gpio_chip** %5, align 8
  %9 = getelementptr inbounds %struct.mcf_gpio_chip, %struct.mcf_gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mcfgpio_read(i32 %10)
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %14, %15
  %17 = call i32 @mcfgpio_bit(i32 %16)
  %18 = and i32 %11, %17
  ret i32 %18
}

declare dso_local %struct.mcf_gpio_chip* @MCF_CHIP(%struct.gpio_chip*) #1

declare dso_local i32 @mcfgpio_read(i32) #1

declare dso_local i32 @mcfgpio_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
