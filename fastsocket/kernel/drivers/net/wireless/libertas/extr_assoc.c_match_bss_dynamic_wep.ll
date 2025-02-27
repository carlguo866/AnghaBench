; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_match_bss_dynamic_wep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_match_bss_dynamic_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_802_11_security = type { i32, i32, i32 }
%struct.bss_descriptor = type { i64*, i64*, i32 }

@WLAN_EID_GENERIC = common dso_local global i64 0, align 8
@WLAN_EID_RSN = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_802_11_security*, %struct.bss_descriptor*)* @match_bss_dynamic_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_bss_dynamic_wep(%struct.lbs_802_11_security* %0, %struct.bss_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_802_11_security*, align 8
  %5 = alloca %struct.bss_descriptor*, align 8
  store %struct.lbs_802_11_security* %0, %struct.lbs_802_11_security** %4, align 8
  store %struct.bss_descriptor* %1, %struct.bss_descriptor** %5, align 8
  %6 = load %struct.lbs_802_11_security*, %struct.lbs_802_11_security** %4, align 8
  %7 = getelementptr inbounds %struct.lbs_802_11_security, %struct.lbs_802_11_security* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %2
  %11 = load %struct.lbs_802_11_security*, %struct.lbs_802_11_security** %4, align 8
  %12 = getelementptr inbounds %struct.lbs_802_11_security, %struct.lbs_802_11_security* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %10
  %16 = load %struct.lbs_802_11_security*, %struct.lbs_802_11_security** %4, align 8
  %17 = getelementptr inbounds %struct.lbs_802_11_security, %struct.lbs_802_11_security* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %15
  %21 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %22 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLAN_EID_GENERIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WLAN_EID_RSN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %38 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %36, %28, %20, %15, %10, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
