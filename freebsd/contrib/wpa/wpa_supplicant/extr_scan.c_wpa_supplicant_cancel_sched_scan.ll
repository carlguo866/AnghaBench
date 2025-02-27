; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_cancel_sched_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_cancel_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cancelling sched scan\00", align 1
@wpa_supplicant_sched_scan_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_dbg(%struct.wpa_supplicant* %17, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @wpa_supplicant_sched_scan_timeout, align 4
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %22 = call i32 @eloop_cancel_timeout(i32 %20, %struct.wpa_supplicant* %21, i32* null)
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = call i32 @wpa_supplicant_stop_sched_scan(%struct.wpa_supplicant* %23)
  br label %25

25:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_supplicant_stop_sched_scan(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
