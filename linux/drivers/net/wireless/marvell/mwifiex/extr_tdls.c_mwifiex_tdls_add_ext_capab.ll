; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_ext_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_ext_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee_types_extcap = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@WLAN_EID_EXT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA5_TDLS_ENABLED = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_tdls_add_ext_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_tdls_add_ext_capab(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee_types_extcap*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.ieee_types_extcap* @skb_put(%struct.sk_buff* %6, i32 16)
  store %struct.ieee_types_extcap* %7, %struct.ieee_types_extcap** %5, align 8
  %8 = load i32, i32* @WLAN_EID_EXT_CAPABILITY, align 4
  %9 = load %struct.ieee_types_extcap*, %struct.ieee_types_extcap** %5, align 8
  %10 = getelementptr inbounds %struct.ieee_types_extcap, %struct.ieee_types_extcap* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.ieee_types_extcap*, %struct.ieee_types_extcap** %5, align 8
  %13 = getelementptr inbounds %struct.ieee_types_extcap, %struct.ieee_types_extcap* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 8, i32* %14, align 8
  %15 = load %struct.ieee_types_extcap*, %struct.ieee_types_extcap** %5, align 8
  %16 = getelementptr inbounds %struct.ieee_types_extcap, %struct.ieee_types_extcap* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 8)
  %19 = load i32, i32* @WLAN_EXT_CAPA5_TDLS_ENABLED, align 4
  %20 = load %struct.ieee_types_extcap*, %struct.ieee_types_extcap** %5, align 8
  %21 = getelementptr inbounds %struct.ieee_types_extcap, %struct.ieee_types_extcap* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH, align 4
  %27 = load %struct.ieee_types_extcap*, %struct.ieee_types_extcap** %5, align 8
  %28 = getelementptr inbounds %struct.ieee_types_extcap, %struct.ieee_types_extcap* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load i32, i32* @WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED, align 4
  %41 = load %struct.ieee_types_extcap*, %struct.ieee_types_extcap** %5, align 8
  %42 = getelementptr inbounds %struct.ieee_types_extcap, %struct.ieee_types_extcap* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %2
  ret void
}

declare dso_local %struct.ieee_types_extcap* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
