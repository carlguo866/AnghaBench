; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_process_model_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_process_model_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS: No Model Name received\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"WPS: Model Name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_device_data*, i32*, i64)* @wps_process_model_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_model_name(%struct.wps_device_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_device_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @wpa_hexdump_ascii(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %15, i64 %16)
  %18 = load %struct.wps_device_data*, %struct.wps_device_data** %5, align 8
  %19 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @os_free(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32* @dup_binstr(i32* %22, i64 %23)
  %25 = load %struct.wps_device_data*, %struct.wps_device_data** %5, align 8
  %26 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.wps_device_data*, %struct.wps_device_data** %5, align 8
  %28 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %33

32:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31, %10
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @dup_binstr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
