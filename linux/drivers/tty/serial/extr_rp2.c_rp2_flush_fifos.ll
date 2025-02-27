; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_flush_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_flush_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp2_uart_port = type { i64 }

@RP2_UART_CTL = common dso_local global i64 0, align 8
@RP2_UART_CTL_FLUSH_RX_m = common dso_local global i32 0, align 4
@RP2_UART_CTL_FLUSH_TX_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp2_uart_port*)* @rp2_flush_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp2_flush_fifos(%struct.rp2_uart_port* %0) #0 {
  %2 = alloca %struct.rp2_uart_port*, align 8
  store %struct.rp2_uart_port* %0, %struct.rp2_uart_port** %2, align 8
  %3 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %4 = load i64, i64* @RP2_UART_CTL, align 8
  %5 = load i32, i32* @RP2_UART_CTL_FLUSH_RX_m, align 4
  %6 = load i32, i32* @RP2_UART_CTL_FLUSH_TX_m, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @rp2_rmw_set(%struct.rp2_uart_port* %3, i64 %4, i32 %7)
  %9 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RP2_UART_CTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = call i32 @udelay(i32 10)
  %16 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %17 = load i64, i64* @RP2_UART_CTL, align 8
  %18 = load i32, i32* @RP2_UART_CTL_FLUSH_RX_m, align 4
  %19 = load i32, i32* @RP2_UART_CTL_FLUSH_TX_m, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rp2_rmw_clr(%struct.rp2_uart_port* %16, i64 %17, i32 %20)
  ret void
}

declare dso_local i32 @rp2_rmw_set(%struct.rp2_uart_port*, i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rp2_rmw_clr(%struct.rp2_uart_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
