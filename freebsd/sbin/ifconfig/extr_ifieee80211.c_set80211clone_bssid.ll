; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211clone_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211clone_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.afswtch = type { i32 }

@IEEE80211_CLONE_BSSID = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @set80211clone_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211clone_bssid(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* @IEEE80211_CLONE_BSSID, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  br label %20

15:                                               ; preds = %4
  %16 = load i32, i32* @IEEE80211_CLONE_BSSID, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %15, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
