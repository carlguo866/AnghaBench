; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_survey_add_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_survey_add_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }

@CHANNEL_SURVEY_SAMPLE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_hal_survey_add_sample(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @OS_MEMCPY(%struct.TYPE_5__* %15, i32* %16, i32 4)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %20, i32* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load i32, i32* @CHANNEL_SURVEY_SAMPLE_COUNT, align 4
  %34 = sext i32 %33 to i64
  %35 = urem i64 %32, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
