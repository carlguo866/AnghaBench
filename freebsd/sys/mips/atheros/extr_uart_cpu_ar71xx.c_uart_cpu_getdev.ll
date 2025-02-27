; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_cpu_ar71xx.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_cpu_ar71xx.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_devinfo = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i64 }

@uart_ns8250_class = common dso_local global i32 0, align 4
@ar71xx_bus_space_reversed = common dso_local global i8* null, align 8
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@uart_bus_space_io = common dso_local global i32* null, align 8
@uart_bus_space_mem = common dso_local global i8* null, align 8
@AR71XX_UART_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_devinfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %4, align 8
  %6 = call i32 (...) @ar71xx_uart_freq()
  store i32 %6, i32* %5, align 4
  %7 = call i32 @uart_getops(i32* @uart_ns8250_class)
  %8 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %11 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** @ar71xx_bus_space_reversed, align 8
  %14 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i8* %13, i8** %16, align 8
  %17 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %18 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %22 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %25 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %24, i32 0, i32 0
  store i32 115200, i32* %25, align 8
  %26 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %27 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %26, i32 0, i32 1
  store i32 8, i32* %27, align 4
  %28 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @UART_PARITY_NONE, align 4
  %31 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %32 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  store i32* null, i32** @uart_bus_space_io, align 8
  %33 = load i8*, i8** @ar71xx_bus_space_reversed, align 8
  store i8* %33, i8** @uart_bus_space_mem, align 8
  %34 = load i32, i32* @AR71XX_UART_ADDR, align 4
  %35 = call i32 @MIPS_PHYS_TO_KSEG1(i32 %34)
  %36 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %37 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  ret i32 0
}

declare dso_local i32 @ar71xx_uart_freq(...) #1

declare dso_local i32 @uart_getops(i32*) #1

declare dso_local i32 @MIPS_PHYS_TO_KSEG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
