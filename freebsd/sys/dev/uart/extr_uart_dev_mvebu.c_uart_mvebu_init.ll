; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@DEFAULT_RCLK = common dso_local global i32 0, align 4
@UART_CTRL = common dso_local global i32 0, align 4
@CTRL_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @uart_mvebu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_mvebu_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @DEFAULT_RCLK, align 4
  %12 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %15 = load i32, i32* @UART_CTRL, align 4
  %16 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %17 = load i32, i32* @UART_CTRL, align 4
  %18 = call i32 @uart_getreg(%struct.uart_bas* %16, i32 %17)
  %19 = load i32, i32* @CTRL_INTR_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @uart_setreg(%struct.uart_bas* %14, i32 %15, i32 %21)
  %23 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %24 = call i32 @uart_barrier(%struct.uart_bas* %23)
  %25 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @uart_mvebu_param(%struct.uart_bas* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_mvebu_param(%struct.uart_bas*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
