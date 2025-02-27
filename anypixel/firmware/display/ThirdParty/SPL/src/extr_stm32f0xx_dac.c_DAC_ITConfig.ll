; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_dac.c_DAC_ITConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_dac.c_DAC_ITConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DISABLE = common dso_local global i64 0, align 8
@DAC = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DAC_ITConfig(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @IS_DAC_CHANNEL(i32 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @IS_FUNCTIONAL_STATE(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @IS_DAC_IT(i32 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @DISABLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DAC, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DAC, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %19
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DAC_CHANNEL(i32) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

declare dso_local i32 @IS_DAC_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
