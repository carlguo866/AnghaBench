; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.cns3xxx_spi = type { i32 }

@SPI_CONFIGURATION_REG = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_TRANSMIT_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @cns3xxx_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cns3xxx_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cns3xxx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.cns3xxx_spi* @to_hw(%struct.spi_device* %7)
  store %struct.cns3xxx_spi* %8, %struct.cns3xxx_spi** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %48 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* @SPI_CONFIGURATION_REG, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SPI_CPHA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 8192
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -8193
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SPI_CPOL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 16384
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -16385
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* @SPI_CONFIGURATION_REG, align 4
  %40 = load i32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %41 = and i32 %40, -8
  store i32 %41, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 3
  %46 = load i32, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @SPI_TRANSMIT_CONTROL_REG, align 4
  br label %48

48:                                               ; preds = %2, %38, %10
  ret void
}

declare dso_local %struct.cns3xxx_spi* @to_hw(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
