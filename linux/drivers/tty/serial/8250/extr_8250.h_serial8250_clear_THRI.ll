; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_serial8250_clear_THRI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_serial8250_clear_THRI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @serial8250_clear_THRI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_clear_THRI(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @UART_IER_THRI, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @UART_IER_THRI, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %19 = load i32, i32* @UART_IER, align 4
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @serial_out(%struct.uart_8250_port* %18, i32 %19, i32 %22)
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
