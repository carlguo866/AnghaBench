; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_chars_in_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_chars_in_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.uart_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @uart_chars_in_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_chars_in_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  store %struct.uart_state* %9, %struct.uart_state** %3, align 8
  %10 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.uart_port* @uart_port_lock(%struct.uart_state* %10, i64 %11)
  store %struct.uart_port* %12, %struct.uart_port** %4, align 8
  %13 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %14 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %13, i32 0, i32 0
  %15 = call i32 @uart_circ_chars_pending(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @uart_port_unlock(%struct.uart_port* %16, i64 %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local %struct.uart_port* @uart_port_lock(%struct.uart_state*, i64) #1

declare dso_local i32 @uart_circ_chars_pending(i32*) #1

declare dso_local i32 @uart_port_unlock(%struct.uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
