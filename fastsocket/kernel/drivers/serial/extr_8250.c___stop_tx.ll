; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c___stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c___stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @__stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__stop_tx(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %3 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %4 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UART_IER_THRI, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @UART_IER_THRI, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_IER, align 4
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @serial_out(%struct.uart_8250_port* %16, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
