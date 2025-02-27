; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_store_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sysfs.c_dma_store_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dma_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dma_store_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_store_config(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dma_channel*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.dma_channel* @to_dma_channel(%struct.device* %11)
  store %struct.dma_channel* %12, %struct.dma_channel** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @simple_strtoul(i8* %13, i32* null, i32 0)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.dma_channel*, %struct.dma_channel** %9, align 8
  %16 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @dma_configure_channel(i32 %17, i64 %18)
  %20 = load i64, i64* %8, align 8
  ret i64 %20
}

declare dso_local %struct.dma_channel* @to_dma_channel(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dma_configure_channel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
