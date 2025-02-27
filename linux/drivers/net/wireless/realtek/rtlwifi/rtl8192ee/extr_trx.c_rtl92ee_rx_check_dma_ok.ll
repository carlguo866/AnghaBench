; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_rx_check_dma_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_rx_check_dma_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_rx_check_dma_ok(%struct.ieee80211_hw* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = bitcast i64* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %48

17:                                               ; preds = %3
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @get_rx_buffer_desc_total_length(i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @get_rx_buffer_desc_fs(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @get_rx_buffer_desc_ls(i32* %22)
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %47, %17
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = phi i1 [ false, %27 ], [ false, %24 ], [ %32, %30 ]
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @get_rx_buffer_desc_total_length(i32* %38)
  store i64 %39, i64* %9, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @get_rx_buffer_desc_fs(i32* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @get_rx_buffer_desc_ls(i32* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp sgt i64 %44, 20
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %48

47:                                               ; preds = %35
  br label %24

48:                                               ; preds = %16, %46, %33
  ret void
}

declare dso_local i64 @get_rx_buffer_desc_total_length(i32*) #1

declare dso_local i64 @get_rx_buffer_desc_fs(i32*) #1

declare dso_local i64 @get_rx_buffer_desc_ls(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
