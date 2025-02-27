; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_send_mlme_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_bsd_send_mlme_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req_mlme = type { i32, i32, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_IOC_MLME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @bsd_send_mlme_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_send_mlme_param(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211req_mlme, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = call i32 @os_memset(%struct.ieee80211req_mlme* %9, i32 0, i32 12)
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %19 = call i32 @os_memcpy(i32 %16, i32* %17, i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @IEEE80211_IOC_MLME, align 4
  %22 = call i32 @set80211var(i8* %20, i32 %21, %struct.ieee80211req_mlme* %9, i32 12)
  ret i32 %22
}

declare dso_local i32 @os_memset(%struct.ieee80211req_mlme*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @set80211var(i8*, i32, %struct.ieee80211req_mlme*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
