; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_reload_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_reload_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.hostapd_iface*)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS: Reload configuration data\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"WPS: Failed to reload the updated configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wps_reload_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_reload_config(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_iface*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hostapd_iface*
  store %struct.hostapd_iface* %7, %struct.hostapd_iface** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.hostapd_iface*)*, i64 (%struct.hostapd_iface*)** %18, align 8
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %21 = call i64 %19(%struct.hostapd_iface* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %2
  %24 = load i32, i32* @MSG_WARNING, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
