; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_detect_key_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_detect_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wil6210_priv = type { i32 }

@WMI_KEY_USE_PAIRWISE = common dso_local global i32 0, align 4
@WMI_KEY_USE_RX_GROUP = common dso_local global i32 0, align 4
@WMI_KEY_USE_TX_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't determine GTK type\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"detect_key_usage: -> %s\0A\00", align 1
@key_usage_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*, i32)* @wil_detect_key_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_detect_key_usage(%struct.wireless_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %8 = call %struct.wil6210_priv* @wdev_to_wil(%struct.wireless_dev* %7)
  store %struct.wil6210_priv* %8, %struct.wil6210_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @WMI_KEY_USE_PAIRWISE, align 4
  store i32 %12, i32* %6, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %21 [
    i32 128, label %17
    i32 130, label %17
    i32 131, label %19
    i32 129, label %19
  ]

17:                                               ; preds = %13, %13
  %18 = load i32, i32* @WMI_KEY_USE_RX_GROUP, align 4
  store i32 %18, i32* %6, align 4
  br label %25

19:                                               ; preds = %13, %13
  %20 = load i32, i32* @WMI_KEY_USE_TX_GROUP, align 4
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %23 = call i32 @wil_err(%struct.wil6210_priv* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @WMI_KEY_USE_RX_GROUP, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %19, %17
  br label %26

26:                                               ; preds = %25, %11
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %28 = load i32*, i32** @key_usage_str, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.wil6210_priv* @wdev_to_wil(%struct.wireless_dev*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
