; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5312/extr_ar5312_attach.c_ar5312GetMacAddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5312/extr_ar5312_attach.c_ar5312GetMacAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar531x_boarddata = type { i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*)* @ar5312GetMacAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5312GetMacAddr(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ar531x_boarddata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ar531x_boarddata* @AR5312_BOARDCONFIG(%struct.ath_hal* %7)
  store %struct.ar531x_boarddata* %8, %struct.ar531x_boarddata** %4, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = call i32 @AR5312_UNIT(%struct.ath_hal* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %20 [
    i32 0, label %12
    i32 1, label %16
  ]

12:                                               ; preds = %1
  %13 = load %struct.ar531x_boarddata*, %struct.ar531x_boarddata** %4, align 8
  %14 = getelementptr inbounds %struct.ar531x_boarddata, %struct.ar531x_boarddata* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.ar531x_boarddata*, %struct.ar531x_boarddata** %4, align 8
  %18 = getelementptr inbounds %struct.ar531x_boarddata, %struct.ar531x_boarddata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @AH_FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %16, %12
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = call %struct.TYPE_2__* @AH5212(%struct.ath_hal* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @OS_MEMCPY(i32 %26, i32* %27, i32 6)
  %29 = load i32, i32* @AH_TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ar531x_boarddata* @AR5312_BOARDCONFIG(%struct.ath_hal*) #1

declare dso_local i32 @AR5312_UNIT(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
