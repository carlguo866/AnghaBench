; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_fill_header_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_fill_header_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32, i32, i32 }

@cfg_payload_len = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@daddr6 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fill_header_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_header_ipv6(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %5, %struct.ipv6hdr** %3, align 8
  %6 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %7 = call i32 @memset(%struct.ipv6hdr* %6, i32 0, i32 24)
  %8 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %9 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %8, i32 0, i32 0
  store i32 6, i32* %9, align 4
  %10 = load i64, i64* @cfg_payload_len, align 8
  %11 = add i64 4, %10
  %12 = call i32 @htons(i64 %11)
  %13 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %14 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IPPROTO_UDP, align 4
  %16 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %17 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 1
  store i32 64, i32* %19, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @daddr6, i32 0, i32 0), align 4
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @daddr6, i32 0, i32 0), align 4
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %25 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  ret i32 24
}

declare dso_local i32 @memset(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
