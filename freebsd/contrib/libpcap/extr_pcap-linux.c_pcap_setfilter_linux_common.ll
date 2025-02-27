; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_setfilter_linux_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_setfilter_linux_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.pcap_linux* }
%struct.TYPE_8__ = type { i64 }
%struct.pcap_linux = type { i32 }
%struct.bpf_program = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"setfilter: No filter specified\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.bpf_program*, i32)* @pcap_setfilter_linux_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setfilter_linux_common(%struct.TYPE_9__* %0, %struct.bpf_program* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.bpf_program*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_linux*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %33

12:                                               ; preds = %3
  %13 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %14 = icmp ne %struct.bpf_program* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %20 = call i32 @strlcpy(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %4, align 4
  br label %33

21:                                               ; preds = %12
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.pcap_linux*, %struct.pcap_linux** %23, align 8
  store %struct.pcap_linux* %24, %struct.pcap_linux** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %27 = call i64 @install_bpf_program(%struct.TYPE_9__* %25, %struct.bpf_program* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load %struct.pcap_linux*, %struct.pcap_linux** %8, align 8
  %32 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %29, %15, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @install_bpf_program(%struct.TYPE_9__*, %struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
