; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_set_encryption.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { i32 }
%struct.key_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32, %struct.key_params*)* @cfg80211_set_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_set_encryption(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.key_params* %7) #0 {
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.key_params*, align 8
  %17 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.key_params* %7, %struct.key_params** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wdev_lock(i32 %20)
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.key_params*, %struct.key_params** %16, align 8
  %30 = call i32 @__cfg80211_set_encryption(%struct.cfg80211_registered_device* %22, %struct.net_device* %23, i32 %24, i32* %25, i32 %26, i32 %27, i32 %28, %struct.key_params* %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.net_device*, %struct.net_device** %10, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wdev_unlock(i32 %33)
  %35 = load i32, i32* %17, align 4
  ret i32 %35
}

declare dso_local i32 @wdev_lock(i32) #1

declare dso_local i32 @__cfg80211_set_encryption(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32, %struct.key_params*) #1

declare dso_local i32 @wdev_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
