; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_wl_linkscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_wl_linkscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i64 }

@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_wl_linkscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_wl_linkscan(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 2
  store %struct.rtw_coex* %10, %struct.rtw_coex** %3, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  store %struct.rtw_coex_stat* %12, %struct.rtw_coex_stat** %4, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 1
  store %struct.rtw_efuse* %14, %struct.rtw_efuse** %5, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  %17 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %16, align 8
  store %struct.rtw_chip_info* %17, %struct.rtw_chip_info** %6, align 8
  %18 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 9, i32* %7, align 4
  store i32 11, i32* %8, align 4
  br label %29

28:                                               ; preds = %22
  store i32 9, i32* %7, align 4
  store i32 7, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %32 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 112, i32* %7, align 4
  store i32 111, i32* %8, align 4
  br label %37

36:                                               ; preds = %30
  store i32 112, i32* %7, align 4
  store i32 107, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %40 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %41 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %39, i32 1, i32 %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %43 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %44 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %42, i32 %47)
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtw_coex_table(%struct.rtw_dev* %49, i32 %50)
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %52, i32 0, i32 %53)
  ret void
}

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_rf_para(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_table(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_tdma(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
