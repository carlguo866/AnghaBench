; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_check_setif_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_check_setif_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"BIOCSETIF failed\00", align 1
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i64 0, align 8
@PCAP_ERROR_IFACE_NOT_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"BIOCSETIF: %s\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @check_setif_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_setif_failure(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ENXIO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @errno, align 8
  %16 = call i32 (i32, i64, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %12, i64 %14, i64 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENETDOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PCAP_ERROR_IFACE_NOT_UP, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @errno, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i64, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %27, i64 %29, i64 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %22, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i64, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
