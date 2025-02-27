; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_timbuart.c_timbuart_mctrl_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_timbuart.c_timbuart_mctrl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CTS_DELTA = common dso_local global i32 0, align 4
@TIMBUART_ISR = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32*)* @timbuart_mctrl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timbuart_mctrl_check(%struct.uart_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CTS_DELTA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i32, i32* @CTS_DELTA, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TIMBUART_ISR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 %13, i64 %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = call i32 @timbuart_get_mctrl(%struct.uart_port* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @TIOCM_CTS, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @uart_handle_cts_change(%struct.uart_port* %22, i32 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @wake_up_interruptible(i32* %31)
  br label %33

33:                                               ; preds = %12, %3
  %34 = load i32, i32* @CTS_DELTA, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @timbuart_get_mctrl(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
