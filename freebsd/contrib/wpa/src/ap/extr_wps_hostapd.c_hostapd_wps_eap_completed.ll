; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_eap_completed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_eap_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }

@wps_reload_config = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WPS: Reschedule immediate configuration reload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_wps_eap_completed(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %3 = load i32, i32* @wps_reload_config, align 4
  %4 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %5 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @eloop_deplete_timeout(i32 0, i32 0, i32 %3, i32 %6, i32* null)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @eloop_deplete_timeout(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
