; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nicvf = type { %struct.nicvf_hw_stats }
%struct.nicvf_hw_stats = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @nicvf_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.nicvf_hw_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nicvf* @netdev_priv(%struct.net_device* %7)
  store %struct.nicvf* %8, %struct.nicvf** %5, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  store %struct.nicvf_hw_stats* %10, %struct.nicvf_hw_stats** %6, align 8
  %11 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %12 = call i32 @nicvf_update_stats(%struct.nicvf* %11)
  %13 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %14 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %17 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %19 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %24 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %29 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %34 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %39 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %6, align 8
  %44 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nicvf_update_stats(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
