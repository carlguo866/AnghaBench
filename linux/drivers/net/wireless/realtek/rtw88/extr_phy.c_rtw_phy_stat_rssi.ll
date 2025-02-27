; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_stat_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_stat_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32, i32 }
%struct.rtw_phy_stat_iter_data = type { i32, %struct.rtw_dev* }

@U8_MAX = common dso_local global i32 0, align 4
@rtw_phy_stat_rssi_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_phy_stat_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_stat_rssi(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca %struct.rtw_phy_stat_iter_data, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  store %struct.rtw_dm_info* %6, %struct.rtw_dm_info** %3, align 8
  %7 = bitcast %struct.rtw_phy_stat_iter_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtw_phy_stat_iter_data, %struct.rtw_phy_stat_iter_data* %4, i32 0, i32 1
  store %struct.rtw_dev* %8, %struct.rtw_dev** %9, align 8
  %10 = load i32, i32* @U8_MAX, align 4
  %11 = getelementptr inbounds %struct.rtw_phy_stat_iter_data, %struct.rtw_phy_stat_iter_data* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = load i32, i32* @rtw_phy_stat_rssi_iter, align 4
  %14 = call i32 @rtw_iterate_stas_atomic(%struct.rtw_dev* %12, i32 %13, %struct.rtw_phy_stat_iter_data* %4)
  %15 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.rtw_phy_stat_iter_data, %struct.rtw_phy_stat_iter_data* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %23 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_iterate_stas_atomic(%struct.rtw_dev*, i32, %struct.rtw_phy_stat_iter_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
