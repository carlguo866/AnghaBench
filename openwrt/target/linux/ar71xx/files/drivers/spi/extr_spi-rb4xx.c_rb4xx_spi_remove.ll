; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_rb4xx_spi_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_rb4xx_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rb4xx_spi = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rb4xx_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rb4xx_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.rb4xx_spi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.rb4xx_spi* %5, %struct.rb4xx_spi** %3, align 8
  %6 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %3, align 8
  %7 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @iounmap(i32 %8)
  %10 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %3, align 8
  %11 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %3, align 8
  %15 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_put(i32 %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %18, i32* null)
  %20 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %3, align 8
  %21 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spi_master_put(i32 %22)
  ret i32 0
}

declare dso_local %struct.rb4xx_spi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @spi_master_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
