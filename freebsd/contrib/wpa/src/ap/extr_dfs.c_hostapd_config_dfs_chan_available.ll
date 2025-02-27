; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_hostapd_config_dfs_chan_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_hostapd_config_dfs_chan_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @hostapd_config_dfs_chan_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_dfs_chan_available(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %8 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %9 = call i32 @dfs_get_start_chan_idx(%struct.hostapd_iface* %8, i32* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = call i32 @dfs_get_used_n_chans(%struct.hostapd_iface* %14, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dfs_check_chans_available(%struct.hostapd_iface* %16, i32 %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @dfs_get_start_chan_idx(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @dfs_get_used_n_chans(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @dfs_check_chans_available(%struct.hostapd_iface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
