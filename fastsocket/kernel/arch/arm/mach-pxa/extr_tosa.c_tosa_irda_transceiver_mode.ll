; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_tosa.c_tosa_irda_transceiver_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_tosa.c_tosa_irda_transceiver_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IR_OFF = common dso_local global i32 0, align 4
@TOSA_GPIO_IR_POWERDWN = common dso_local global i32 0, align 4
@TOSA_GPIO_IRDA_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @tosa_irda_transceiver_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosa_irda_transceiver_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IR_OFF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* @TOSA_GPIO_IR_POWERDWN, align 4
  %11 = call i32 @gpio_set_value(i32 %10, i32 0)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pxa2xx_transceiver_mode(%struct.device* %12, i32 %13)
  %15 = load i32, i32* @TOSA_GPIO_IRDA_TX, align 4
  %16 = call i32 @gpio_direction_output(i32 %15, i32 0)
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pxa2xx_transceiver_mode(%struct.device* %18, i32 %19)
  %21 = load i32, i32* @TOSA_GPIO_IR_POWERDWN, align 4
  %22 = call i32 @gpio_set_value(i32 %21, i32 1)
  br label %23

23:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @pxa2xx_transceiver_mode(%struct.device*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
