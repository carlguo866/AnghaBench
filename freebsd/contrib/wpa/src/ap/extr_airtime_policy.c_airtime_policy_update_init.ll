; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_airtime_policy_update_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_airtime_policy_update_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AIRTIME_MODE_DYNAMIC = common dso_local global i64 0, align 8
@update_airtime_weights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @airtime_policy_update_init(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AIRTIME_MODE_DYNAMIC, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %16 = call i64 @get_airtime_policy_update_timeout(%struct.hostapd_iface* %15, i32* %4, i32* %5)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @update_airtime_weights, align 4
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %24 = call i32 @eloop_register_timeout(i32 %20, i32 %21, i32 %22, %struct.hostapd_iface* %23, i32* null)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %18, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @get_airtime_policy_update_timeout(%struct.hostapd_iface*, i32*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_iface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
