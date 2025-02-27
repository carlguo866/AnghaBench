; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_univ8250_release_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_univ8250_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__, %struct.uart_port }
%struct.TYPE_2__ = type { i32 }
%struct.uart_port = type { i64 }

@serial8250_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @univ8250_release_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @univ8250_release_irq(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  store %struct.uart_port* %5, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %8 = call i32 @del_timer_sync(%struct.TYPE_2__* %7)
  %9 = load i32, i32* @serial8250_timeout, align 4
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %19 = call i32 @serial_unlink_irq_chain(%struct.uart_8250_port* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_2__*) #1

declare dso_local i32 @serial_unlink_irq_chain(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
