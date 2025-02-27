; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/xdfm1/src/extr_uart.c_uart_init.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/xdfm1/src/extr_uart.c_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPFSEL1 = common dso_local global i32 0, align 4
@GPPUD = common dso_local global i32 0, align 4
@GPPUDCLK0 = common dso_local global i32 0, align 4
@UART_ICR_REG = common dso_local global i32 0, align 4
@UART_IBRD_REG = common dso_local global i32 0, align 4
@UART_FBRD_REG = common dso_local global i32 0, align 4
@UART_LCRH_REG = common dso_local global i32 0, align 4
@UART_LCRH_FEN = common dso_local global i32 0, align 4
@UART_LCRH_WLEN_8BIT = common dso_local global i32 0, align 4
@UART_IMSC_REG = common dso_local global i32 0, align 4
@UART_CR_REG = common dso_local global i32 0, align 4
@UART_CR_UARTEN = common dso_local global i32 0, align 4
@UART_CR_TXE = common dso_local global i32 0, align 4
@UART_CR_RXE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GPFSEL1, align 4
  %3 = call i32 @get32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = and i32 %4, -28673
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, 16384
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, -229377
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, 131072
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @GPFSEL1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @put32(i32 %12, i32 %13)
  %15 = load i32, i32* @GPPUD, align 4
  %16 = call i32 @put32(i32 %15, i32 0)
  %17 = call i32 @delay(i32 150)
  %18 = load i32, i32* @GPPUDCLK0, align 4
  %19 = call i32 @put32(i32 %18, i32 49152)
  %20 = call i32 @delay(i32 150)
  %21 = load i32, i32* @GPPUDCLK0, align 4
  %22 = call i32 @put32(i32 %21, i32 0)
  %23 = load i32, i32* @UART_ICR_REG, align 4
  %24 = call i32 @put32(i32 %23, i32 2047)
  %25 = load i32, i32* @UART_IBRD_REG, align 4
  %26 = call i32 @put32(i32 %25, i32 26)
  %27 = load i32, i32* @UART_FBRD_REG, align 4
  %28 = call i32 @put32(i32 %27, i32 3)
  %29 = load i32, i32* @UART_LCRH_REG, align 4
  %30 = load i32, i32* @UART_LCRH_FEN, align 4
  %31 = load i32, i32* @UART_LCRH_WLEN_8BIT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @put32(i32 %29, i32 %32)
  %34 = load i32, i32* @UART_IMSC_REG, align 4
  %35 = call i32 @put32(i32 %34, i32 0)
  %36 = load i32, i32* @UART_CR_REG, align 4
  %37 = load i32, i32* @UART_CR_UARTEN, align 4
  %38 = load i32, i32* @UART_CR_TXE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UART_CR_RXE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @put32(i32 %36, i32 %41)
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @put32(i32, i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
