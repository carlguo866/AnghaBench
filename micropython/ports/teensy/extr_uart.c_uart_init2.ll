; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_uart.c_uart_init2.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_uart.c_uart_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@GPIOA = common dso_local global i32* null, align 8
@GPIOB = common dso_local global i32* null, align 8
@GPIOC = common dso_local global i32* null, align 8
@GPIOD = common dso_local global i32* null, align 8
@GPIO_AF7_USART1 = common dso_local global i32 0, align 4
@GPIO_AF7_USART2 = common dso_local global i32 0, align 4
@GPIO_AF7_USART3 = common dso_local global i32 0, align 4
@GPIO_AF8_UART4 = common dso_local global i32 0, align 4
@GPIO_AF8_USART6 = common dso_local global i32 0, align 4
@GPIO_MODE_AF_PP = common dso_local global i32 0, align 4
@GPIO_PIN_0 = common dso_local global i32 0, align 4
@GPIO_PIN_1 = common dso_local global i32 0, align 4
@GPIO_PIN_10 = common dso_local global i32 0, align 4
@GPIO_PIN_11 = common dso_local global i32 0, align 4
@GPIO_PIN_2 = common dso_local global i32 0, align 4
@GPIO_PIN_3 = common dso_local global i32 0, align 4
@GPIO_PIN_6 = common dso_local global i32 0, align 4
@GPIO_PIN_7 = common dso_local global i32 0, align 4
@GPIO_PIN_8 = common dso_local global i32 0, align 4
@GPIO_PIN_9 = common dso_local global i32 0, align 4
@GPIO_PULLUP = common dso_local global i32 0, align 4
@GPIO_SPEED_HIGH = common dso_local global i32 0, align 4
@UART4 = common dso_local global i32* null, align 8
@USART1 = common dso_local global i32* null, align 8
@USART2 = common dso_local global i32* null, align 8
@USART3 = common dso_local global i32* null, align 8
@USART6 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_init2(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
