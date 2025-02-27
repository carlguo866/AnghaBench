; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTConstructRT2RTAggElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTConstructRT2RTAggElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64 }

@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"posRT2RTAgg can't be null in HTConstructRT2RTAggElement()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTConstructRT2RTAggElement(%struct.ieee80211_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %11 = call i32 @IEEE80211_DEBUG(i32 %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %38

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset(i32* %13, i32 0, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %5, align 8
  store i32 224, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 76, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  store i32 2, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  store i32 1, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 16, i32* %27, align 4
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 8
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %32, %12
  %37 = load i32*, i32** %6, align 8
  store i32 8, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
