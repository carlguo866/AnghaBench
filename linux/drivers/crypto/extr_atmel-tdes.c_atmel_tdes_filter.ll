; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.at_dma_slave*, %struct.TYPE_2__* }
%struct.at_dma_slave = type { i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @atmel_tdes_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.at_dma_slave*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.at_dma_slave*
  store %struct.at_dma_slave* %8, %struct.at_dma_slave** %6, align 8
  %9 = load %struct.at_dma_slave*, %struct.at_dma_slave** %6, align 8
  %10 = icmp ne %struct.at_dma_slave* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.at_dma_slave*, %struct.at_dma_slave** %6, align 8
  %13 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %16 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.at_dma_slave*, %struct.at_dma_slave** %6, align 8
  %23 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %23, i32 0, i32 0
  store %struct.at_dma_slave* %22, %struct.at_dma_slave** %24, align 8
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
