; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_scan_res_ignore_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_scan_res_ignore_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, %struct.wpa_radio_work* }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.wpa_radio_work = type { i32 }
%struct.wpa_scan_results = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"P2P: Ignore scan results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_scan_results*)* @wpas_p2p_scan_res_ignore_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_scan_res_ignore_search(%struct.wpa_supplicant* %0, %struct.wpa_scan_results* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_scan_results*, align 8
  %5 = alloca %struct.wpa_radio_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_scan_results* %1, %struct.wpa_scan_results** %4, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 1
  %10 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %9, align 8
  %11 = icmp ne %struct.wpa_radio_work* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 1
  %15 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %14, align 8
  store %struct.wpa_radio_work* %15, %struct.wpa_radio_work** %5, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 1
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %17, align 8
  %18 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %5, align 8
  %19 = call i32 @radio_work_done(%struct.wpa_radio_work* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @p2p_scan_res_handled(i32* %40)
  br label %42

42:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @radio_work_done(%struct.wpa_radio_work*) #1

declare dso_local i32 @p2p_scan_res_handled(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
