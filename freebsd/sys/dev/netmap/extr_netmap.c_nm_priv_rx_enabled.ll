; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_priv_rx_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nm_priv_rx_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { i64*, i64* }

@NR_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_priv_d*)* @nm_priv_rx_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_priv_rx_enabled(%struct.netmap_priv_d* %0) #0 {
  %2 = alloca %struct.netmap_priv_d*, align 8
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %2, align 8
  %3 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %4 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* @NR_RX, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %10 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @NR_RX, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %8, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
