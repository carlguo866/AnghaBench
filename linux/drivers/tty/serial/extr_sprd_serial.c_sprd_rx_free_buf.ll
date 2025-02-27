; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_rx_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_rx_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_uart_port = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@SPRD_UART_RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_uart_port*)* @sprd_rx_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_rx_free_buf(%struct.sprd_uart_port* %0) #0 {
  %2 = alloca %struct.sprd_uart_port*, align 8
  store %struct.sprd_uart_port* %0, %struct.sprd_uart_port** %2, align 8
  %3 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %2, align 8
  %4 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SPRD_UART_RX_SIZE, align 4
  %14 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free_coherent(i32 %12, i32 %13, i64 %17, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
