; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32, i32)* @serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_out(%struct.uart_8250_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %9, align 8
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 %10(%struct.TYPE_2__* %12, i32 %13, i32 %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
