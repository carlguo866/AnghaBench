; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm2835.c_bcm2835_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm2835_i2c_dev = type { i32, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"div\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bcm2835_i2c_dev*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.bcm2835_i2c_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.bcm2835_i2c_dev* %6, %struct.bcm2835_i2c_dev** %3, align 8
  %7 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.clk* @devm_clk_get(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %10, %struct.clk** %4, align 8
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = call i32 @clk_rate_exclusive_put(%struct.clk* %11)
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = call i32 @clk_disable_unprepare(%struct.clk* %13)
  %15 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.bcm2835_i2c_dev* %18)
  %20 = load %struct.bcm2835_i2c_dev*, %struct.bcm2835_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.bcm2835_i2c_dev, %struct.bcm2835_i2c_dev* %20, i32 0, i32 0
  %22 = call i32 @i2c_del_adapter(i32* %21)
  ret i32 0
}

declare dso_local %struct.bcm2835_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

declare dso_local i32 @clk_rate_exclusive_put(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @free_irq(i32, %struct.bcm2835_i2c_dev*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
