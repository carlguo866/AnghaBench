; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @qcom_geni_serial_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call i64 @uart_console(%struct.uart_port* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @console_stop(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.uart_port* %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = call i32 @qcom_geni_serial_stop_tx(%struct.uart_port* %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = call i32 @qcom_geni_serial_stop_rx(%struct.uart_port* %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @console_stop(i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qcom_geni_serial_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @qcom_geni_serial_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
