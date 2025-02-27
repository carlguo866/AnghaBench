; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_desc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.stm32_mdma_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.stm32_mdma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @stm32_mdma_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_mdma_desc_free(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.stm32_mdma_desc*, align 8
  %4 = alloca %struct.stm32_mdma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %6 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %7 = call %struct.stm32_mdma_desc* @to_stm32_mdma_desc(%struct.virt_dma_desc* %6)
  store %struct.stm32_mdma_desc* %7, %struct.stm32_mdma_desc** %3, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %9 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(i32 %11)
  store %struct.stm32_mdma_chan* %12, %struct.stm32_mdma_chan** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %3, align 8
  %24 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %3, align 8
  %32 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_pool_free(i32 %22, i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %3, align 8
  %45 = call i32 @kfree(%struct.stm32_mdma_desc* %44)
  ret void
}

declare dso_local %struct.stm32_mdma_desc* @to_stm32_mdma_desc(%struct.virt_dma_desc*) #1

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.stm32_mdma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
