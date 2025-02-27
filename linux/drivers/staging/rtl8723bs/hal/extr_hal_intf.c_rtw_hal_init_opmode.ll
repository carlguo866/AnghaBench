; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_init_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_init_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@Ndis802_11InfrastructureMax = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@Ndis802_11IBSS = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@Ndis802_11Infrastructure = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@Ndis802_11APMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtw_hal_init_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_hal_init_opmode(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load i32, i32* @Ndis802_11InfrastructureMax, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.mlme_priv* %8, %struct.mlme_priv** %4, align 8
  %9 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %10 = call i32 @get_fwstate(%struct.mlme_priv* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @Ndis802_11IBSS, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WIFI_STATION_STATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @Ndis802_11Infrastructure, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WIFI_AP_STATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @Ndis802_11APMode, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %24
  br label %38

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @rtw_setopmode_cmd(%struct.adapter* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @rtw_setopmode_cmd(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
