; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_hw_csum_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_hw_csum_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ob_mac_iocb_req = type { i32, i32, i32 }
%struct.iphdr = type { i64, i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@OB_3032MAC_IOCB_REQ_TC = common dso_local global i32 0, align 4
@OB_3032MAC_IOCB_REQ_IC = common dso_local global i32 0, align 4
@OB_3032MAC_IOCB_REQ_UC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ob_mac_iocb_req*)* @ql_hw_csum_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_hw_csum_setup(%struct.sk_buff* %0, %struct.ob_mac_iocb_req* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ob_mac_iocb_req*, align 8
  %5 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ob_mac_iocb_req* %1, %struct.ob_mac_iocb_req** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %6)
  store %struct.iphdr* %7, %struct.iphdr** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @skb_network_offset(%struct.sk_buff* %8)
  %10 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %4, align 8
  %11 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %4, align 8
  %16 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPPROTO_TCP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @OB_3032MAC_IOCB_REQ_TC, align 4
  %24 = load i32, i32* @OB_3032MAC_IOCB_REQ_IC, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %4, align 8
  %27 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @OB_3032MAC_IOCB_REQ_UC, align 4
  %32 = load i32, i32* @OB_3032MAC_IOCB_REQ_IC, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %4, align 8
  %35 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %22
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
