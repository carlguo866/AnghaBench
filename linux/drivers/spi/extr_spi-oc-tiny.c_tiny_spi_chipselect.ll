; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.tiny_spi = type { i64, i32* }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @tiny_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiny_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tiny_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.tiny_spi* @tiny_spi_to_hw(%struct.spi_device* %6)
  store %struct.tiny_spi* %7, %struct.tiny_spi** %5, align 8
  %8 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %9 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %14 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SPI_CS_HIGH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  br label %34

29:                                               ; preds = %12
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = call i32 @gpio_set_value(i32 %20, i32 %35)
  br label %37

37:                                               ; preds = %34, %2
  ret void
}

declare dso_local %struct.tiny_spi* @tiny_spi_to_hw(%struct.spi_device*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
