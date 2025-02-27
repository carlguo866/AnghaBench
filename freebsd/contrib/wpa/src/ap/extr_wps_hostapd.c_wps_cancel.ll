; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wps_cancel_ctx = type { i32 }

@ap_sta_wps_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @wps_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_cancel(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wps_cancel_ctx*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.wps_cancel_ctx*
  store %struct.wps_cancel_ctx* %7, %struct.wps_cancel_ctx** %5, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.wps_cancel_ctx*, %struct.wps_cancel_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.wps_cancel_ctx, %struct.wps_cancel_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wps_registrar_wps_cancel(i32 %21)
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %24 = load i32, i32* @ap_sta_wps_cancel, align 4
  %25 = call i32 @ap_for_each_sta(%struct.hostapd_data* %23, i32 %24, i32* null)
  br label %26

26:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local i32 @wps_registrar_wps_cancel(i32) #1

declare dso_local i32 @ap_for_each_sta(%struct.hostapd_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
