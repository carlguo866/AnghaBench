; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-AKA: Generating Notification\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_NOTIFICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"   AT_NOTIFICATION (%d)\00", align 1
@EAP_SIM_AT_NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"   AT_IV\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"   AT_ENCR_DATA\00", align 1
@EAP_SIM_AT_IV = common dso_local global i32 0, align 4
@EAP_SIM_AT_ENCR_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"   *AT_COUNTER (%u)\00", align 1
@EAP_SIM_AT_COUNTER = common dso_local global i32 0, align 4
@EAP_SIM_AT_PADDING = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-AKA: Failed to encrypt AT_ENCR_DATA\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32)* @eap_aka_build_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_build_notification(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EAP_AKA_SUBTYPE_NOTIFICATION, align 4
  %17 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %11, i32 %12, i32 %15, i32 %16)
  store %struct.eap_sim_msg* %17, %struct.eap_sim_msg** %8, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %24 = load i32, i32* @EAP_SIM_AT_NOTIFICATION, align 4
  %25 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %26 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %23, i32 %24, i32 %27, i32* null, i32 0)
  %29 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %30 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %3
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %35 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %44 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %45 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %46 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %53 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %54 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %52, i32 %53, i32 %56, i32* null, i32 0)
  %58 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %59 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %60 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %63 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %58, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %38
  %66 = load i32, i32* @MSG_WARNING, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %69 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %68)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %86

70:                                               ; preds = %38
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %75 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %76 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %3
  %78 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %79 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %80 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %83 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %78, i32 %81, i32 %84, i32* null, i32 0)
  store %struct.wpabuf* %85, %struct.wpabuf** %4, align 8
  br label %86

86:                                               ; preds = %77, %65
  %87 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %87
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
