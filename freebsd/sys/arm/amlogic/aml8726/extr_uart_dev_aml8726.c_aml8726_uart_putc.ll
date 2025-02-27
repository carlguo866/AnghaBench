; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@AML_UART_STATUS_REG = common dso_local global i32 0, align 4
@AML_UART_STATUS_TX_FIFO_FULL = common dso_local global i32 0, align 4
@AML_UART_WFIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @aml8726_uart_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_uart_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %12, %2
  %6 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %7 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %8 = call i32 @uart_getreg(%struct.uart_bas* %6, i32 %7)
  %9 = load i32, i32* @AML_UART_STATUS_TX_FIFO_FULL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 (...) @cpu_spinwait()
  br label %5

14:                                               ; preds = %5
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = load i32, i32* @AML_UART_WFIFO_REG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @uart_setreg(%struct.uart_bas* %15, i32 %16, i32 %17)
  %19 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %20 = call i32 @uart_barrier(%struct.uart_bas* %19)
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
