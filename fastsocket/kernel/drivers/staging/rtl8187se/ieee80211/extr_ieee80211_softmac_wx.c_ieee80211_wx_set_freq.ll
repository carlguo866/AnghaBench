; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, i32, %struct.TYPE_2__, i32, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_freq }
%struct.iw_freq = type { i32, i32 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ieee80211_wlan_frequencies = common dso_local global i32* null, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_freq(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iw_freq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.iw_freq*
  store %struct.iw_freq* %14, %struct.iw_freq** %10, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 2
  %17 = call i32 @down(i32* %16)
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IW_MODE_INFRA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %131

26:                                               ; preds = %4
  %27 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %28 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %33 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 241200000
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %38 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 248700000
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %43 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 100000
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %59, %41
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 14
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** @ieee80211_wlan_frequencies, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %50, %55
  br label %57

57:                                               ; preds = %49, %46
  %58 = phi i1 [ false, %46 ], [ %56, %49 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %46

62:                                               ; preds = %57
  %63 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %64 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %68 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %36, %31
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %72 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %77 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 14
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %82 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75, %70
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %131

88:                                               ; preds = %80
  %89 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %90 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 5
  %97 = load i32 (i32, i32)*, i32 (i32, i32)** %96, align 8
  %98 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %97(i32 %100, i32 %104)
  %106 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IW_MODE_ADHOC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %88
  %112 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IW_MODE_MASTER, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %111, %88
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %119 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IEEE80211_LINKED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %125 = call i32 @ieee80211_stop_send_beacons(%struct.ieee80211_device* %124)
  %126 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %127 = call i32 @ieee80211_start_send_beacons(%struct.ieee80211_device* %126)
  br label %128

128:                                              ; preds = %123, %117
  br label %129

129:                                              ; preds = %128, %111
  br label %130

130:                                              ; preds = %129
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %130, %85, %23
  %132 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %132, i32 0, i32 2
  %134 = call i32 @up(i32* %133)
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ieee80211_stop_send_beacons(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_start_send_beacons(%struct.ieee80211_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
