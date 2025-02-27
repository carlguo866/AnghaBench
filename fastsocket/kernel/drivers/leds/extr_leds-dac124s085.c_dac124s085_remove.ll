; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-dac124s085.c_dac124s085_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-dac124s085.c_dac124s085_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.dac124s085 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dac124s085_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac124s085_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.dac124s085*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.dac124s085* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.dac124s085* %6, %struct.dac124s085** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dac124s085*, %struct.dac124s085** %3, align 8
  %10 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %7
  %15 = load %struct.dac124s085*, %struct.dac124s085** %3, align 8
  %16 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @led_classdev_unregister(i32* %21)
  %23 = load %struct.dac124s085*, %struct.dac124s085** %3, align 8
  %24 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @cancel_work_sync(i32* %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %36 = call i32 @spi_set_drvdata(%struct.spi_device* %35, i32* null)
  %37 = load %struct.dac124s085*, %struct.dac124s085** %3, align 8
  %38 = call i32 @kfree(%struct.dac124s085* %37)
  ret i32 0
}

declare dso_local %struct.dac124s085* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, i32*) #1

declare dso_local i32 @kfree(%struct.dac124s085*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
