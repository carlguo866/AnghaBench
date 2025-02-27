; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_legacyEepromDetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah_eeprom_v3.c_legacyEepromDetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@AR_EEPROM_VER4_0 = common dso_local global i64 0, align 8
@AH_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @legacyEepromDetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacyEepromDetach(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal* %4)
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AR_EEPROM_VER4_0, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i32 @freeEepromRawPowerCalInfo5112(%struct.ath_hal* %19, %struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %18, %13, %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @ath_hal_free(%struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AH_NULL, align 8
  %26 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %27 = call %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal* %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %28, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @freeEepromRawPowerCalInfo5112(%struct.ath_hal*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath_hal_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
