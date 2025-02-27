; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_get_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_get_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibss_rsn_peer = type { i32, %struct.ibss_rsn_peer* }
%struct.ibss_rsn = type { %struct.ibss_rsn_peer* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibss_rsn_peer* (%struct.ibss_rsn*, i32*)* @ibss_rsn_get_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibss_rsn_peer* @ibss_rsn_get_peer(%struct.ibss_rsn* %0, i32* %1) #0 {
  %3 = alloca %struct.ibss_rsn*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ibss_rsn_peer*, align 8
  store %struct.ibss_rsn* %0, %struct.ibss_rsn** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ibss_rsn*, %struct.ibss_rsn** %3, align 8
  %7 = getelementptr inbounds %struct.ibss_rsn, %struct.ibss_rsn* %6, i32 0, i32 0
  %8 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %7, align 8
  store %struct.ibss_rsn_peer* %8, %struct.ibss_rsn_peer** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %11 = icmp ne %struct.ibss_rsn_peer* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %15 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i64 @os_memcmp(i32* %13, i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %26

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %24 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %23, i32 0, i32 1
  %25 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %24, align 8
  store %struct.ibss_rsn_peer* %25, %struct.ibss_rsn_peer** %5, align 8
  br label %9

26:                                               ; preds = %20, %9
  %27 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  ret %struct.ibss_rsn_peer* %27
}

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
