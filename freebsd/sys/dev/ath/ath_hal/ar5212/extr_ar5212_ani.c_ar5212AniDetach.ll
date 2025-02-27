; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniDetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniDetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i64 }

@HAL_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Detaching Ani\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212AniDetach(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %4)
  store %struct.ath_hal_5212* %5, %struct.ath_hal_5212** %3, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %8 = call i32 @HALDEBUG(%struct.ath_hal* %6, i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = call i32 @disableAniMIBCounters(%struct.ath_hal* %14)
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*) #1

declare dso_local i32 @disableAniMIBCounters(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
