; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_init_scan_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_init_scan_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_init_scan_params(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i8*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @fls(i32 %7)
  %9 = getelementptr i8, i8* %8, i64 -1
  store i8* %9, i8** %3, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %18, i8** %23, align 8
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %33, i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %24
  ret void
}

declare dso_local i8* @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
