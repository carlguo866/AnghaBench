; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_get_dev_info_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_get_dev_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_er_ap = type { i32* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS ER: GetDeviceInfo OK\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WPS ER: GetDeviceInfo failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @wps_er_http_get_dev_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_get_dev_info_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_ap*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wps_er_ap*
  store %struct.wps_er_ap* %11, %struct.wps_er_ap** %7, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %39 [
    i32 129, label %13
    i32 131, label %36
    i32 130, label %36
    i32 128, label %36
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.http_client*, %struct.http_client** %5, align 8
  %17 = call %struct.wpabuf* @http_client_get_body(%struct.http_client* %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %8, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %39

21:                                               ; preds = %13
  %22 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %23 = call i32 @wpabuf_len(%struct.wpabuf* %22)
  %24 = add nsw i32 %23, 1
  %25 = call i8* @os_zalloc(i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %39

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %32 = call i32 @wpabuf_head(%struct.wpabuf* %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = call i32 @wpabuf_len(%struct.wpabuf* %33)
  %35 = call i32 @os_memcpy(i8* %30, i32 %32, i32 %34)
  br label %39

36:                                               ; preds = %3, %3, %3
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %3, %36, %29, %28, %20
  %40 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %41 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @http_client_free(i32* %42)
  %44 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %45 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @wps_er_ap_learn(%struct.wps_er_ap* %49, i8* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @os_free(i8* %52)
  br label %54

54:                                               ; preds = %48, %39
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @http_client_get_body(%struct.http_client*) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @os_memcpy(i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @http_client_free(i32*) #1

declare dso_local i32 @wps_er_ap_learn(%struct.wps_er_ap*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
