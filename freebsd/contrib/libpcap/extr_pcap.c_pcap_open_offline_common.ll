; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_open_offline_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_open_offline_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PCAP_TSTAMP_PRECISION_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @pcap_open_offline_common(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.TYPE_6__* @pcap_alloc_pcap_t(i8* %7, i64 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @PCAP_TSTAMP_PRECISION_MICRO, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %3, align 8
  br label %19

19:                                               ; preds = %13, %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %20
}

declare dso_local %struct.TYPE_6__* @pcap_alloc_pcap_t(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
