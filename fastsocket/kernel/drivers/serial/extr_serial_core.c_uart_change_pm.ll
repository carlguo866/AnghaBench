; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_change_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_change_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { i32, %struct.uart_port* }
%struct.uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_state*, i32)* @uart_change_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_change_pm(%struct.uart_state* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  store %struct.uart_state* %0, %struct.uart_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %7 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %6, i32 0, i32 1
  %8 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %10 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.uart_port*, i32, i32)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %25, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %30 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %26(%struct.uart_port* %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %21, %14
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %36 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
