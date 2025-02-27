; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_auth_start_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_auth_start_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i64, %struct.wpa_supplicant*, %struct.wpa_connect_work* }
%struct.wpa_supplicant = type { i32, %struct.wpa_radio_work* }
%struct.wpa_connect_work = type { i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"SME: BSS/SSID entry for authentication not valid anymore - drop connection attempt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*, i32)* @sme_auth_start_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sme_auth_start_cb(%struct.wpa_radio_work* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_radio_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_connect_work*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %7, i32 0, i32 2
  %9 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %8, align 8
  store %struct.wpa_connect_work* %9, %struct.wpa_connect_work** %5, align 8
  %10 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %10, i32 0, i32 1
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 1
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %22, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %25 = call i32 @wpas_connect_work_free(%struct.wpa_connect_work* %24)
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  store %struct.wpa_radio_work* %27, %struct.wpa_radio_work** %29, align 8
  %30 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %26
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %36 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpas_valid_bss_ssid(%struct.wpa_supplicant* %35, i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %46 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %47 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44, %34, %26
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_dbg(%struct.wpa_supplicant* %52, i32 %53, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %56 = call i32 @wpas_connect_work_done(%struct.wpa_supplicant* %55)
  br label %70

57:                                               ; preds = %44
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wpa_sm_set_assoc_wpa_ie(i32 %60, i32* null, i32 0)
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %63 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %64 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sme_send_authentication(%struct.wpa_supplicant* %62, i32 %65, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %57, %51, %23
  ret void
}

declare dso_local i32 @wpas_connect_work_free(%struct.wpa_connect_work*) #1

declare dso_local i32 @wpas_valid_bss_ssid(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i64 @wpas_network_disabled(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpas_connect_work_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_sm_set_assoc_wpa_ie(i32, i32*, i32) #1

declare dso_local i32 @sme_send_authentication(%struct.wpa_supplicant*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
