; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_is_wpa_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_is_wpa_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_wlan_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WLAN_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_wlan_private*, i32)* @is_wpa_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_wpa_key(%struct.rndis_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rndis_wlan_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rndis_wlan_private* %0, %struct.rndis_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %7 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WLAN_CIPHER_SUITE_CCMP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WLAN_CIPHER_SUITE_TKIP, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
