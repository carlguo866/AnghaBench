; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_stats_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_stats_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.pcap_pf* }
%struct.pcap_pf = type { i64, i64, i32, i32 }
%struct.pcap_stat = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pcap_stat*)* @pcap_stats_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_stats_pf(%struct.TYPE_3__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pcap_stat*, align 8
  %5 = alloca %struct.pcap_pf*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pcap_pf*, %struct.pcap_pf** %7, align 8
  store %struct.pcap_pf* %8, %struct.pcap_pf** %5, align 8
  %9 = load %struct.pcap_pf*, %struct.pcap_pf** %5, align 8
  %10 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  %13 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.pcap_pf*, %struct.pcap_pf** %5, align 8
  %15 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  %18 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pcap_pf*, %struct.pcap_pf** %5, align 8
  %20 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pcap_pf*, %struct.pcap_pf** %5, align 8
  %23 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  %27 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
