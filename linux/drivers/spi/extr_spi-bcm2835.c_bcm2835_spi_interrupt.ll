; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.bcm2835_spi = type { i32, i64 }

@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_RXF = common dso_local global i32 0, align 4
@BCM2835_SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_RXR = common dso_local global i32 0, align 4
@BCM2835_SPI_FIFO_SIZE_3_4 = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm2835_spi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.bcm2835_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.spi_controller*
  store %struct.spi_controller* %9, %struct.spi_controller** %5, align 8
  %10 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %11 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %10)
  store %struct.bcm2835_spi* %11, %struct.bcm2835_spi** %6, align 8
  %12 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %13 = load i32, i32* @BCM2835_SPI_CS, align 4
  %14 = call i32 @bcm2835_rd(%struct.bcm2835_spi* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BCM2835_SPI_CS_RXF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %21 = load i32, i32* @BCM2835_SPI_FIFO_SIZE, align 4
  %22 = call i32 @bcm2835_rd_fifo_blind(%struct.bcm2835_spi* %20, i32 %21)
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @BCM2835_SPI_CS_RXR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %30 = load i32, i32* @BCM2835_SPI_FIFO_SIZE_3_4, align 4
  %31 = call i32 @bcm2835_rd_fifo_blind(%struct.bcm2835_spi* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %35 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BCM2835_SPI_CS_DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %45 = load i32, i32* @BCM2835_SPI_FIFO_SIZE, align 4
  %46 = call i32 @bcm2835_wr_fifo_blind(%struct.bcm2835_spi* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38, %33
  %48 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %49 = call i32 @bcm2835_rd_fifo(%struct.bcm2835_spi* %48)
  %50 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %51 = call i32 @bcm2835_wr_fifo(%struct.bcm2835_spi* %50)
  %52 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %53 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %58 = call i32 @bcm2835_spi_reset_hw(%struct.spi_controller* %57)
  %59 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %60 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %59, i32 0, i32 0
  %61 = call i32 @complete(i32* %60)
  br label %62

62:                                               ; preds = %56, %47
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_rd(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_rd_fifo_blind(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_wr_fifo_blind(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_rd_fifo(%struct.bcm2835_spi*) #1

declare dso_local i32 @bcm2835_wr_fifo(%struct.bcm2835_spi*) #1

declare dso_local i32 @bcm2835_spi_reset_hw(%struct.spi_controller*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
