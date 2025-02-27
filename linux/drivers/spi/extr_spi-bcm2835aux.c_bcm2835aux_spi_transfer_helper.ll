; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_transfer_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_transfer_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835aux_spi = type { i32, i64, i64 }

@BCM2835_AUX_SPI_STAT = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_STAT_RX_LVL = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_STAT_TX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835aux_spi*)* @bcm2835aux_spi_transfer_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835aux_spi_transfer_helper(%struct.bcm2835aux_spi* %0) #0 {
  %2 = alloca %struct.bcm2835aux_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835aux_spi* %0, %struct.bcm2835aux_spi** %2, align 8
  %4 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %5 = load i32, i32* @BCM2835_AUX_SPI_STAT, align 4
  %6 = call i32 @bcm2835aux_rd(%struct.bcm2835aux_spi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %9 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @BCM2835_AUX_SPI_STAT_RX_LVL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %21 = call i32 @bcm2835aux_rd_fifo(%struct.bcm2835aux_spi* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %24 = load i32, i32* @BCM2835_AUX_SPI_STAT, align 4
  %25 = call i32 @bcm2835aux_rd(%struct.bcm2835aux_spi* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %47, %26
  %28 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %29 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %34 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 12
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %39 = load i32, i32* @BCM2835_AUX_SPI_STAT, align 4
  %40 = call i32 @bcm2835aux_rd(%struct.bcm2835aux_spi* %38, i32 %39)
  %41 = load i32, i32* @BCM2835_AUX_SPI_STAT_TX_FULL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %37, %32, %27
  %46 = phi i1 [ false, %32 ], [ false, %27 ], [ %44, %37 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %2, align 8
  %49 = call i32 @bcm2835aux_wr_fifo(%struct.bcm2835aux_spi* %48)
  br label %27

50:                                               ; preds = %45
  ret void
}

declare dso_local i32 @bcm2835aux_rd(%struct.bcm2835aux_spi*, i32) #1

declare dso_local i32 @bcm2835aux_rd_fifo(%struct.bcm2835aux_spi*) #1

declare dso_local i32 @bcm2835aux_wr_fifo(%struct.bcm2835aux_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
