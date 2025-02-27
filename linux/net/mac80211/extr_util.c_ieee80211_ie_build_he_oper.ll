; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_he_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_he_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_he_operation = type { i32, i32 }

@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_EXT_HE_OPERATION = common dso_local global i32 0, align 4
@IEEE80211_HE_OPERATION_RTS_THRESHOLD_MASK = common dso_local global i32 0, align 4
@IEEE80211_HE_OPERATION_ER_SU_DISABLE = common dso_local global i32 0, align 4
@IEEE80211_HE_OPERATION_BSS_COLOR_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_ie_build_he_oper(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ieee80211_he_operation*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %2, align 8
  store i32 %5, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %2, align 8
  store i32 9, i32* %8, align 4
  %10 = load i32, i32* @WLAN_EID_EXT_HE_OPERATION, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %2, align 8
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* @IEEE80211_HE_OPERATION_RTS_THRESHOLD_MASK, align 4
  %14 = call i32 @u32_encode_bits(i32 1023, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @IEEE80211_HE_OPERATION_ER_SU_DISABLE, align 4
  %18 = call i32 @u32_encode_bits(i32 1, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @IEEE80211_HE_OPERATION_BSS_COLOR_DISABLED, align 4
  %22 = call i32 @u32_encode_bits(i32 1, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = bitcast i32* %25 to %struct.ieee80211_he_operation*
  store %struct.ieee80211_he_operation* %26, %struct.ieee80211_he_operation** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = call i32 @cpu_to_le16(i32 65535)
  %32 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  ret i32* %35
}

declare dso_local i32 @u32_encode_bits(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
