; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_dump_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_dump_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nl_msg = type { i32 }
%struct.nl80211_dump_scan_ctx = type { i64, %struct.wpa_driver_nl80211_data* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"nl80211: Scan result dump\00", align 1
@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL80211_CMD_GET_SCAN = common dso_local global i32 0, align 4
@nl80211_dump_scan_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_dump_scan(%struct.wpa_driver_nl80211_data* %0) #0 {
  %2 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca %struct.nl80211_dump_scan_ctx, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %2, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %8 = getelementptr inbounds %struct.nl80211_dump_scan_ctx, %struct.nl80211_dump_scan_ctx* %4, i32 0, i32 1
  store %struct.wpa_driver_nl80211_data* %7, %struct.wpa_driver_nl80211_data** %8, align 8
  %9 = getelementptr inbounds %struct.nl80211_dump_scan_ctx, %struct.nl80211_dump_scan_ctx* %4, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NLM_F_DUMP, align 4
  %14 = load i32, i32* @NL80211_CMD_GET_SCAN, align 4
  %15 = call %struct.nl_msg* @nl80211_cmd_msg(i32 %12, i32 %13, i32 %14)
  store %struct.nl_msg* %15, %struct.nl_msg** %3, align 8
  %16 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %17 = icmp ne %struct.nl_msg* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %20 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %21 = load i32, i32* @nl80211_dump_scan_handler, align 4
  %22 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %19, %struct.nl_msg* %20, i32 %21, %struct.nl80211_dump_scan_ctx* %4)
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.nl_msg* @nl80211_cmd_msg(i32, i32, i32) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, %struct.nl80211_dump_scan_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
