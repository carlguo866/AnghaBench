; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial8250_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %5, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @UART_LCR_SBC, align 4
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @UART_LCR_SBC, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %26 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %31 = load i32, i32* @UART_LCR, align 4
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %33 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @serial_out(%struct.uart_8250_port* %30, i32 %31, i32 %34)
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
