; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_uart.c_uart_deinit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_uart.c_uart_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@USART_CR1_UE = common dso_local global i32 0, align 4
@USART1_IRQn = common dso_local global i32 0, align 4
@UART10_IRQn = common dso_local global i32 0, align 4
@UART4_IRQn = common dso_local global i32 0, align 4
@UART5_IRQn = common dso_local global i32 0, align 4
@UART7_IRQn = common dso_local global i32 0, align 4
@UART8_IRQn = common dso_local global i32 0, align 4
@UART9_IRQn = common dso_local global i32 0, align 4
@USART2_IRQn = common dso_local global i32 0, align 4
@USART3_IRQn = common dso_local global i32 0, align 4
@USART6_IRQn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_deinit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load i32, i32* @USART_CR1_UE, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %6
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @USART1_IRQn, align 4
  %19 = call i32 @HAL_NVIC_DisableIRQ(i32 %18)
  %20 = call i32 (...) @__HAL_RCC_USART1_FORCE_RESET()
  %21 = call i32 (...) @__HAL_RCC_USART1_RELEASE_RESET()
  %22 = call i32 (...) @__HAL_RCC_USART1_CLK_DISABLE()
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @HAL_NVIC_DisableIRQ(i32) #1

declare dso_local i32 @__HAL_RCC_USART1_FORCE_RESET(...) #1

declare dso_local i32 @__HAL_RCC_USART1_RELEASE_RESET(...) #1

declare dso_local i32 @__HAL_RCC_USART1_CLK_DISABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
