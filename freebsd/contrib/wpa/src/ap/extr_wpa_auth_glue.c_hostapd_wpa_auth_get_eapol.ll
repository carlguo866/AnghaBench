; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_get_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_get_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @hostapd_wpa_auth_get_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wpa_auth_get_eapol(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca %struct.sta_info*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hostapd_data*
  store %struct.hostapd_data* %11, %struct.hostapd_data** %8, align 8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %12, i32* %13)
  store %struct.sta_info* %14, %struct.sta_info** %9, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %16 = icmp eq %struct.sta_info* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %40

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %39 [
    i32 128, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %23
  %26 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %31, %25, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
