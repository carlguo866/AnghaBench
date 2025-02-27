; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210GpioSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210GpioSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_NUM_GPIO = common dso_local global i32 0, align 4
@AR_GPIODO = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210GpioSet(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @AR_NUM_GPIO, align 4
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @HALASSERT(i32 %11)
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = load i32, i32* @AR_GPIODO, align 4
  %15 = call i32 @OS_REG_READ(%struct.ath_hal* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = load i32, i32* @AR_GPIODO, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @AH_TRUE, align 4
  ret i32 %31
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
