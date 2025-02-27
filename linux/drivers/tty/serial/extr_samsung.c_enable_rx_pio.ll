; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_enable_rx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_enable_rx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i32, %struct.uart_port }
%struct.uart_port = type { i32 }

@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C64XX_UCON_TIMEOUT_MASK = common dso_local global i32 0, align 4
@S3C64XX_UCON_EMPTYINT_EN = common dso_local global i32 0, align 4
@S3C64XX_UCON_DMASUS_EN = common dso_local global i32 0, align 4
@S3C64XX_UCON_TIMEOUT_EN = common dso_local global i32 0, align 4
@S3C64XX_UCON_RXMODE_MASK = common dso_local global i32 0, align 4
@S3C64XX_UCON_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@S3C64XX_UCON_RXMODE_CPU = common dso_local global i32 0, align 4
@S3C24XX_RX_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*)* @enable_rx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_rx_pio(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca %struct.s3c24xx_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %2, align 8
  %5 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %5, i32 0, i32 1
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = load i32, i32* @S3C2410_UCON, align 4
  %9 = call i32 @rd_regl(%struct.uart_port* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @S3C64XX_UCON_TIMEOUT_MASK, align 4
  %11 = load i32, i32* @S3C64XX_UCON_EMPTYINT_EN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S3C64XX_UCON_DMASUS_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @S3C64XX_UCON_TIMEOUT_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S3C64XX_UCON_RXMODE_MASK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @S3C64XX_UCON_TIMEOUT_SHIFT, align 4
  %23 = shl i32 15, %22
  %24 = load i32, i32* @S3C64XX_UCON_TIMEOUT_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S3C64XX_UCON_RXMODE_CPU, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = load i32, i32* @S3C2410_UCON, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @wr_regl(%struct.uart_port* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @S3C24XX_RX_PIO, align 4
  %35 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
