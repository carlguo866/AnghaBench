; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock.c_rawsock_recv_packet.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock.c_rawsock_recv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i64, i8**, i32, %struct.pfring_pkthdr*, i32)*, i32 (i64, i32)* }
%struct.pfring_pkthdr = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_8__ = type { i8* (i64, %struct.pcap_pkthdr*)* }
%struct.pcap_pkthdr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.Adapter = type { i64, i64 }

@PFRING = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PF_RING_ERROR_NO_PKT_AVAILABLE = common dso_local global i32 0, align 4
@is_tx_done = common dso_local global i32 0, align 4
@PCAP = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@is_pcap_file = common dso_local global i64 0, align 8
@is_rx_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rawsock_recv_packet(%struct.Adapter* %0, i32* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.pfring_pkthdr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pcap_pkthdr, align 8
  store %struct.Adapter* %0, %struct.Adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load %struct.Adapter*, %struct.Adapter** %7, align 8
  %16 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32 (i64, i8**, i32, %struct.pfring_pkthdr*, i32)*, i32 (i64, i8**, i32, %struct.pfring_pkthdr*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @PFRING, i32 0, i32 0), align 8
  %22 = load %struct.Adapter*, %struct.Adapter** %7, align 8
  %23 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = call i32 %21(i64 %24, i8** %25, i32 0, %struct.pfring_pkthdr* %12, i32 0)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @PF_RING_ERROR_NO_PKT_AVAILABLE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.pfring_pkthdr, %struct.pfring_pkthdr* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %20
  %35 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @PFRING, i32 0, i32 1), align 8
  %36 = load %struct.Adapter*, %struct.Adapter** %7, align 8
  %37 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 %35(i64 %38, i32 1)
  %40 = load i32, i32* @is_tx_done, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %99

43:                                               ; preds = %34
  br label %20

44:                                               ; preds = %30
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %99

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pfring_pkthdr, %struct.pfring_pkthdr* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.pfring_pkthdr, %struct.pfring_pkthdr* %12, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.pfring_pkthdr, %struct.pfring_pkthdr* %12, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %98

63:                                               ; preds = %5
  %64 = load %struct.Adapter*, %struct.Adapter** %7, align 8
  %65 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %63
  %69 = load i8* (i64, %struct.pcap_pkthdr*)*, i8* (i64, %struct.pcap_pkthdr*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @PCAP, i32 0, i32 0), align 8
  %70 = load %struct.Adapter*, %struct.Adapter** %7, align 8
  %71 = getelementptr inbounds %struct.Adapter, %struct.Adapter* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i8* %69(i64 %72, %struct.pcap_pkthdr* %14)
  %74 = load i8**, i8*** %11, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i8**, i8*** %11, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i64, i64* @is_pcap_file, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* @is_tx_done, align 4
  store i32 1, i32* @is_rx_done, align 4
  br label %82

82:                                               ; preds = %81, %78
  store i32 1, i32* %6, align 4
  br label %99

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %83, %63
  br label %98

98:                                               ; preds = %97, %48
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %82, %47, %42
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
