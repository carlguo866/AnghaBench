; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_build_rdma_network_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_build_rdma_network_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rdma_network_hdr = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.rdma_network_hdr*, %struct.rxe_pkt_info*)* @build_rdma_network_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_rdma_network_hdr(%union.rdma_network_hdr* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca %union.rdma_network_hdr*, align 8
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %union.rdma_network_hdr* %0, %union.rdma_network_hdr** %3, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %4, align 8
  %6 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %7 = call %struct.sk_buff* @PKT_TO_SKB(%struct.rxe_pkt_info* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %5, align 8
  %8 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %9 = call i32 @memset(%union.rdma_network_hdr* %8, i32 0, i32 4)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ETH_P_IP, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %18 = bitcast %union.rdma_network_hdr* %17 to i32*
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @ip_hdr(%struct.sk_buff* %19)
  %21 = call i32 @memcpy(i32* %18, i32 %20, i32 4)
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @ETH_P_IPV6, align 4
  %27 = call i64 @htons(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %3, align 8
  %31 = bitcast %union.rdma_network_hdr* %30 to i32*
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @ipv6_hdr(%struct.sk_buff* %32)
  %34 = call i32 @memcpy(i32* %31, i32 %33, i32 4)
  br label %35

35:                                               ; preds = %29, %22
  br label %36

36:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.sk_buff* @PKT_TO_SKB(%struct.rxe_pkt_info*) #1

declare dso_local i32 @memset(%union.rdma_network_hdr*, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
