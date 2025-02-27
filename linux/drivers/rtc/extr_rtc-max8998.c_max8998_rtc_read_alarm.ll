; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.max8998_rtc_info = type { i32 }

@MAX8998_ALARM0_SEC = common dso_local global i32 0, align 4
@MAX8998_ALARM0_CONF = common dso_local global i32 0, align 4
@MAX8998_RTC_STATUS = common dso_local global i32 0, align 4
@ALARM0_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max8998_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.max8998_rtc_info*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.max8998_rtc_info* @dev_get_drvdata(%struct.device* %10)
  store %struct.max8998_rtc_info* %11, %struct.max8998_rtc_info** %6, align 8
  %12 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %13 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAX8998_ALARM0_SEC, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %17 = call i32 @max8998_bulk_read(i32 %14, i32 %15, i32 8, i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 2
  %26 = call i32 @max8998_data_to_tm(i32* %23, i32* %25)
  %27 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %28 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX8998_ALARM0_CONF, align 4
  %31 = call i32 @max8998_read_reg(i32 %29, i32 %30, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %45 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAX8998_RTC_STATUS, align 4
  %48 = call i32 @max8998_read_reg(i32 %46, i32 %47, i32* %8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %65

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ALARM0_STATUS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %64

61:                                               ; preds = %53
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %51, %34, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.max8998_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @max8998_bulk_read(i32, i32, i32, i32*) #1

declare dso_local i32 @max8998_data_to_tm(i32*, i32*) #1

declare dso_local i32 @max8998_read_reg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
