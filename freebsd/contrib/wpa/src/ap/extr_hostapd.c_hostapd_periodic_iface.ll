; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_periodic_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_periodic_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.hostapd_data** }
%struct.hostapd_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_periodic_iface(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %6 = call i32 @ap_list_timer(%struct.hostapd_iface* %5)
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 1
  %16 = load %struct.hostapd_data**, %struct.hostapd_data*** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %16, i64 %17
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %18, align 8
  store %struct.hostapd_data* %19, %struct.hostapd_data** %4, align 8
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %27 = call i32 @hostapd_acl_expire(%struct.hostapd_data* %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ap_list_timer(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_acl_expire(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
