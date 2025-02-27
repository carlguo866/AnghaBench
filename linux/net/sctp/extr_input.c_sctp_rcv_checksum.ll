; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_rcv_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_rcv_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctphdr = type { i64 }

@SCTP_MIB_CHECKSUMERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*)* @sctp_rcv_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_rcv_checksum(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sctphdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %9)
  store %struct.sctphdr* %10, %struct.sctphdr** %6, align 8
  %11 = load %struct.sctphdr*, %struct.sctphdr** %6, align 8
  %12 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @sctp_compute_cksum(%struct.sk_buff* %14, i32 0)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.net*, %struct.net** %4, align 8
  %21 = load i32, i32* @SCTP_MIB_CHECKSUMERRORS, align 4
  %22 = call i32 @__SCTP_INC_STATS(%struct.net* %20, i32 %21)
  store i32 -1, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @sctp_compute_cksum(%struct.sk_buff*, i32) #1

declare dso_local i32 @__SCTP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
