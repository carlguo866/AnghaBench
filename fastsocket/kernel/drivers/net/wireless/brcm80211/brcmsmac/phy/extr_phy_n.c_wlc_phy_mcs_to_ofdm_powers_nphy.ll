; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_mcs_to_ofdm_powers_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_mcs_to_ofdm_powers_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_mcs_to_ofdm_powers_nphy(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %38, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %9, align 8
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %32, i64* %36, align 8
  br label %37

37:                                               ; preds = %28, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %13

43:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
