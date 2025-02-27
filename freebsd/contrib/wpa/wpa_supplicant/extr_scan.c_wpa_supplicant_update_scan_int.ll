; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_update_scan_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_update_scan_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.os_reltime = type { i32, i64 }

@wpa_supplicant_scan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_update_scan_int(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.os_reltime, align 8
  %6 = alloca %struct.os_reltime, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @wpa_supplicant_scan, align 4
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %10 = call i32 @eloop_cancel_timeout_one(i32 %8, %struct.wpa_supplicant* %9, i32* null, %struct.os_reltime* %5)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = call i64 @os_reltime_before(%struct.os_reltime* %5, %struct.os_reltime* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %19, %16, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @wpa_supplicant_scan, align 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = call i32 @eloop_register_timeout(i32 %31, i64 %33, i32 %34, %struct.wpa_supplicant* %35, i32* null)
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @eloop_cancel_timeout_one(i32, %struct.wpa_supplicant*, i32*, %struct.os_reltime*) #1

declare dso_local i64 @os_reltime_before(%struct.os_reltime*, %struct.os_reltime*) #1

declare dso_local i32 @eloop_register_timeout(i32, i64, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
