; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_mlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prism2_hostapd_param = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.prism2_hostapd_param*)* @prism2_ioctl_mlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_mlme(i32* %0, %struct.prism2_hostapd_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.prism2_hostapd_param*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %5, align 8
  %7 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %8 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpu_to_le16(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %14 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %32 [
    i32 129, label %18
    i32 128, label %25
  ]

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %21 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %24 = call i32 @prism2_sta_send_mgmt(i32* %19, i32 %22, i32 %23, i32* %6, i32 2)
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %28 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  %31 = call i32 @prism2_sta_send_mgmt(i32* %26, i32 %29, i32 %30, i32* %6, i32 2)
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %25, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @prism2_sta_send_mgmt(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
