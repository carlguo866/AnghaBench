; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_write_auth_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_write_auth_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"auth_alg\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09auth_alg=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.wpa_ssid*)* @write_auth_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_auth_alg(i32* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %6 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %13 = call i8* @wpa_config_get(%struct.wpa_ssid* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %29

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @os_free(i8* %27)
  br label %29

29:                                               ; preds = %26, %16, %10
  ret void
}

declare dso_local i8* @wpa_config_get(%struct.wpa_ssid*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
