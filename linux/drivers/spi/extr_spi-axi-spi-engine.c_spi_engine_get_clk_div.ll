; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_get_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_get_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_engine = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_engine*, %struct.spi_device*, %struct.spi_transfer*)* @spi_engine_get_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_engine_get_clk_div(%struct.spi_engine* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_engine*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_engine* %0, %struct.spi_engine** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_engine*, %struct.spi_engine** %4, align 8
  %9 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 2
  %16 = call i32 @DIV_ROUND_UP(i32 %11, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 255, i32* %7, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = sub i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
