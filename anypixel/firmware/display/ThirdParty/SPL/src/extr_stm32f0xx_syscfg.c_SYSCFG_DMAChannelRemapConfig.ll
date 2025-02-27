; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_syscfg.c_SYSCFG_DMAChannelRemapConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_syscfg.c_SYSCFG_DMAChannelRemapConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@DISABLE = common dso_local global i64 0, align 8
@SYSCFG = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSCFG_DMAChannelRemapConfig(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @IS_SYSCFG_DMA_REMAP(i64 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @IS_FUNCTIONAL_STATE(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @DISABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSCFG, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %18, %15
  store i64 %19, i64* %17, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load i64, i64* %3, align 8
  %22 = xor i64 %21, -1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSCFG, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_SYSCFG_DMA_REMAP(i64) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
