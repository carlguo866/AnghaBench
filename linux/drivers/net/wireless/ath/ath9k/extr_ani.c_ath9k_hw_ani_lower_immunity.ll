; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_lower_immunity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_ani_lower_immunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_ani_lower_immunity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ani_lower_immunity(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar5416AniState*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ar5416AniState* %5, %struct.ar5416AniState** %3, align 8
  %6 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %7 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %12 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %17 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15, %10
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %23 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @ath9k_hw_set_ofdm_nil(%struct.ath_hw* %21, i64 %25, i32 0)
  br label %39

27:                                               ; preds = %15, %1
  %28 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %29 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %35 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @ath9k_hw_set_cck_nil(%struct.ath_hw* %33, i64 %37, i32 0)
  br label %39

39:                                               ; preds = %20, %32, %27
  ret void
}

declare dso_local i32 @ath9k_hw_set_ofdm_nil(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_set_cck_nil(%struct.ath_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
