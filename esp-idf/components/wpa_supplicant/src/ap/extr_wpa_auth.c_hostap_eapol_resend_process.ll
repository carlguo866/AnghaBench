; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_hostap_eapol_resend_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_hostap_eapol_resend_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i64, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"resend eapol1\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Station left, stop send EAPOL frame\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_eapol_resend_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_state_machine*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.wpa_state_machine* @wpa_auth_get_sm(i32 %7)
  store %struct.wpa_state_machine* %8, %struct.wpa_state_machine** %4, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %12 = icmp ne %struct.wpa_state_machine* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %22 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %21)
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i32, i32* @ESP_OK, align 4
  ret i32 %27
}

declare dso_local %struct.wpa_state_machine* @wpa_auth_get_sm(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_sm_step(%struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
