; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_getCapability.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_getCapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HAL_OK = common dso_local global i32 0, align 4
@HAL_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getCapability(%struct.ath_hal* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %12 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %22 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %17 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HAL_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
