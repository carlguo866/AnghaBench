; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx.c_bcm63xx_spi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx.c_bcm63xx_spi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.bcm63xx_spi = type { i32 }

@SPI_INT_STATUS = common dso_local global i32 0, align 4
@SPI_INTR_CLEAR_ALL = common dso_local global i32 0, align 4
@SPI_INT_MASK = common dso_local global i32 0, align 4
@SPI_INTR_CMD_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm63xx_spi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_spi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.bcm63xx_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.spi_master*
  store %struct.spi_master* %9, %struct.spi_master** %5, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.bcm63xx_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.bcm63xx_spi* %11, %struct.bcm63xx_spi** %6, align 8
  %12 = load %struct.bcm63xx_spi*, %struct.bcm63xx_spi** %6, align 8
  %13 = load i32, i32* @SPI_INT_STATUS, align 4
  %14 = call i32 @bcm_spi_readb(%struct.bcm63xx_spi* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.bcm63xx_spi*, %struct.bcm63xx_spi** %6, align 8
  %16 = load i32, i32* @SPI_INTR_CLEAR_ALL, align 4
  %17 = load i32, i32* @SPI_INT_STATUS, align 4
  %18 = call i32 @bcm_spi_writeb(%struct.bcm63xx_spi* %15, i32 %16, i32 %17)
  %19 = load %struct.bcm63xx_spi*, %struct.bcm63xx_spi** %6, align 8
  %20 = load i32, i32* @SPI_INT_MASK, align 4
  %21 = call i32 @bcm_spi_writeb(%struct.bcm63xx_spi* %19, i32 0, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SPI_INTR_CMD_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.bcm63xx_spi*, %struct.bcm63xx_spi** %6, align 8
  %28 = getelementptr inbounds %struct.bcm63xx_spi, %struct.bcm63xx_spi* %27, i32 0, i32 0
  %29 = call i32 @complete(i32* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local %struct.bcm63xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @bcm_spi_readb(%struct.bcm63xx_spi*, i32) #1

declare dso_local i32 @bcm_spi_writeb(%struct.bcm63xx_spi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
