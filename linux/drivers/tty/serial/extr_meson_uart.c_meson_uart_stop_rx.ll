; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@AML_UART_CONTROL = common dso_local global i64 0, align 8
@AML_UART_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @meson_uart_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_uart_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AML_UART_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @AML_UART_RX_EN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AML_UART_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
