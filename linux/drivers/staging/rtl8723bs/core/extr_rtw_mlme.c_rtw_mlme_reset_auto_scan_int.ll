; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_mlme_reset_auto_scan_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_mlme_reset_auto_scan_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.TYPE_2__ = type { i64 }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64 }
%struct.mlme_priv = type { i32, i32 }

@RTW_ROAM_ACTIVE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_mlme_reset_auto_scan_int(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 2
  store %struct.mlme_priv* %7, %struct.mlme_priv** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.mlme_ext_priv* %9, %struct.mlme_ext_priv** %4, align 8
  %10 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %10, i32 0, i32 0
  store %struct.mlme_ext_info* %11, %struct.mlme_ext_info** %5, align 8
  %12 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %59

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = call i32 @is_client_associated_to_ap(%struct.adapter* %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  store i32 60000, i32* %31, align 4
  br label %58

32:                                               ; preds = %25, %19
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = load i32, i32* @RTW_ROAM_ACTIVE, align 4
  %35 = call i64 @rtw_chk_roam_flags(%struct.adapter* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %39 = load i32, i32* @WIFI_STATION_STATE, align 4
  %40 = call i64 @check_fwstate(%struct.mlme_priv* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %44 = load i32, i32* @_FW_LINKED, align 4
  %45 = call i64 @check_fwstate(%struct.mlme_priv* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %42, %37
  br label %57

54:                                               ; preds = %32
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %53
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %16
  ret void
}

declare dso_local i32 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i64 @rtw_chk_roam_flags(%struct.adapter*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
