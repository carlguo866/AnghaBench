; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-io.c_gdbstub_io_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-io.c_gdbstub_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_1 = common dso_local global i32 0, align 4
@DTR = common dso_local global i32 0, align 4
@RTS = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@__UART_IRR_NMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbstub_io_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @UART_LCR_WLEN8, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %6 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @UART_FCR_TRIGGER_1, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @DTR, align 4
  %13 = call i32 @FLOWCTL_CLEAR(i32 %12)
  %14 = load i32, i32* @RTS, align 4
  %15 = call i32 @FLOWCTL_SET(i32 %14)
  %16 = load i32, i32* @UART_IER_RDI, align 4
  %17 = load i32, i32* @UART_IER_RLSI, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = call i32 (...) @mb()
  %20 = load i32, i32* @__UART_IRR_NMI, align 4
  %21 = call i32 @__set_IRR(i32 6, i32 %20)
  ret void
}

declare dso_local i32 @FLOWCTL_CLEAR(i32) #1

declare dso_local i32 @FLOWCTL_SET(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @__set_IRR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
