; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dma.c_DMA_GetCmdStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dma.c_DMA_GetCmdStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DISABLE = common dso_local global i32 0, align 4
@DMA_SxCR_EN = common dso_local global i64 0, align 8
@ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMA_GetCmdStatus(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @DISABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i32 @IS_DMA_ALL_PERIPH(%struct.TYPE_4__* %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @DMA_SxCR_EN, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENABLE, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @DISABLE, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DMA_ALL_PERIPH(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
