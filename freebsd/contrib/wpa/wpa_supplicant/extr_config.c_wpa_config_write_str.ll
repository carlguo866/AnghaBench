; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i64, i64 }
%struct.wpa_ssid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parse_data*, %struct.wpa_ssid*)* @wpa_config_write_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_write_str(%struct.parse_data* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parse_data*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store %struct.parse_data* %0, %struct.parse_data** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %9 = bitcast %struct.wpa_ssid* %8 to i32*
  %10 = load %struct.parse_data*, %struct.parse_data** %4, align 8
  %11 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = bitcast i32* %13 to i8**
  store i8** %14, i8*** %7, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.parse_data*, %struct.parse_data** %4, align 8
  %21 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = bitcast %struct.wpa_ssid* %25 to i32*
  %27 = load %struct.parse_data*, %struct.parse_data** %4, align 8
  %28 = getelementptr inbounds %struct.parse_data, %struct.parse_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = bitcast i32* %30 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %37

33:                                               ; preds = %19
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @os_strlen(i8* %35)
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i64, i64* %6, align 8
  %42 = call i8* @wpa_config_write_string(i32* %40, i64 %41)
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %37, %18
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @wpa_config_write_string(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
